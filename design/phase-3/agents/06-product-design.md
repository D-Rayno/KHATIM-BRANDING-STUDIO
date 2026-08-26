# AGENT 06 — DIGITAL PRODUCT DESIGNER
## Khatim Brand Studio — Phase 3: Product Layer Concept Prototypes

**Scope:** Exploratory product UI concepts only. Every screen below is a **CONCEPT PROTOTYPE — EXPLORATION**. No final layout, color, type, or component is locked. These prototypes test whether the internal concept — **THE SOVEREIGN WITNESS** (Party A + Party B + impartial Witness) — can survive contact with real software without theatrics.

**Ground rules inherited from strategy:**
- V1 product truth = PDF digital sealing + basic auth (email/OTP) + tamper-evident audit trails. **Nothing else may appear as shipped capability.**
- The **Forensic Interface** (evidentiary brackets `[ ... ]`, monospace tables) is **quarantined to the product tier** — never leaked into marketing surfaces.
- The **Matrix/Impression deboss** is the semiotic center: digital weight without skeuomorphism.
- The **45-degree rhombic nuqta grid** governs proportions invisibly. It is structure, not decoration.
- Anti-patterns enforced: no shields, padlocks, checkmarks-as-hero, neon gradients, confetti, wax seals, panic red.

---

## SCREEN 1 — SIGNING SCREEN
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** The sealing moment. The user performs the act; the Witness observes. Witnessing without theatrics.

**Layout zones (top to bottom):**
1. **Document zone (60% height):** The PDF rendered flat, centered, on a quiet substrate. No glowing drop shadows; a single hairline frame. The document is the protagonist.
2. **Tripartite strip (below document):** Three aligned cells — `[Party A] [Party B] [Witness]` — equal width, equal typographic weight. The Witness cell is visually identical in mass to the parties: the Witness does not dominate, it *attends*.
3. **Action zone (bottom):** One primary action: **"Seal document."** Not "Sign & Send!", not "Finish!". One verb, one object.

**Hierarchy:** Document > triad > action. The eye lands on the artifact, confirms the three parties, commits.

**States:**
- *Pre-seal:* Action button at full weight; witness cell reads `[ Witness: standing by ]`.
- *Sealing (transient, under 1s):* The deboss behavior — a subtle, inward displacement of the seal area, as if the substrate yields under pressure. No spinner. A single state line: `[ Sealing ]`.
- *Sealed:* Button retires to a quiet filled state: `[ Sealed — hash 8f3a…c21d ]`. The deboss impression remains visible at low contrast.

**Microcopy tone:** Clerk-like, present tense, declarative. "This document will be sealed and witnessed." Never "Awesome! Almost done!"

**Load-bearing brand behaviors:** The deboss micro-displacement at the moment of sealing; the tripartite strip making the Witness structurally present; total absence of celebration.

---

## SCREEN 2 — VERIFICATION SCREEN
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** The forensic truth moment — built for a *third party* (a lawyer, an auditor, a counterparty) who did not attend the sealing.

**Layout zones:**
1. **Verdict header:** One line, set in the interface's quiet voice: `This document is authentic.` or `This document does not match its seal.` No badge, no shield icon, no green checkmark hero.
2. **Evidence block (core zone):** A monospace table inside evidentiary brackets:
   - `[ Document hash    8f3a9c…e21d ]`
   - `[ Sealed           2026-08-14 09:31:07 UTC ]`
   - `[ Witnessed by     Khatim (independent third party) ]`
   - `[ Parties          2 verified, 0 pending ]`
   - `[ Audit entries    6 — chain intact ]`
3. **Document preview (secondary):** Rendered smaller than on the signing screen — here the *evidence* outranks the artifact.
4. **Export action:** "Download certificate (PDF)."

**Hierarchy:** Verdict > evidence table > document > export. The third party gets the answer in under two seconds, the proof immediately after.

**States:** *Authentic* / *Hash mismatch* / *Seal revoked* / *Unknown document* (never seen by the Witness — stated plainly: "Khatim has no record of this document.").

**Microcopy tone:** Court-exhibit register. Numbers, timestamps, facts. Zero adjectives.

**Load-bearing brand behaviors:** Evidentiary brackets as the signature forensic device; monospace as the voice of record; the Witness named as a *party to the record*, not a vendor.

---

## SCREEN 3 — DOCUMENT STATUS
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** The lifecycle, told as a ledger entry, not a progress bar.

**Lifecycle rail:** `draft → sent → viewed → sealed → witnessed → archived`
Rendered as a horizontal sequence of bracketed states: `[draft] [sent] [viewed] [sealed] [witnessed] [archived]`. Completed states are filled; the current state is enclosed in double brackets `[[witnessed]]`; future states are hollow.

**Exception states (visually distinct, never decorative):**
- **Dispute:** The rail freezes; a single line appears beneath: `[ Dispute opened 2026-08-20 — record locked for review ]`. The document becomes read-only. Amber-oxide accent (exploratory), never red.
- **Revoked:** The rail does not rewind — revocation is appended as a new terminal state: `[revoked]`. History is never deleted; that is the brand.

**Hierarchy:** Current state > full history > next expected state. No percentages, no "67% complete."

**Microcopy tone:** Past tense for facts ("Viewed by Party B, 14:02 UTC"), no predictions ("Party B will sign soon" is forbidden — the Witness does not speculate).

**Load-bearing brand behaviors:** Immutable-append-only history; the lifecycle as evidence, not UX gamification.

---

## SCREEN 4 — CERTIFICATE
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** The print/PDF artifact — the object a lawyer staples to a filing. The deboss must survive print.

**Structure (tripartite, single page):**
1. **Header third:** Wordmark placeholder + certificate title: `Certificate of Sealing`. A rendered **deboss impression** — in print, executed as a blind-emboss simulation (tonal relief, no ink) or a single-color letterpress-style plate. This is where the Matrix/Impression becomes physical.
2. **Middle third — tripartite attestation block:** Three columns: Party A | Party B | Witness. Each column holds name, auth method (email/OTP), timestamp. The Witness column carries the seal hash and the impression.
3. **Footer third:** Monospace verification strip: `[ Verify at khatim.example/v/8f3a9c…e21d ]` + document hash + audit chain head hash.

**Hierarchy:** Seal impression > tripartite attestation > verification strip.

**States:** Valid / Revoked (a single diagonal hairline rule + `[ REVOKED ]` overprint — austere, not a red "VOID" stamp).

**Microcopy tone:** Legal-instrument register. "This certificate attests that the document identified below was sealed and witnessed at the time stated."

**Load-bearing brand behaviors:** The deboss as a *print technology*, not a screen effect; tripartite symmetry; the certificate as the brand's most ownable physical artifact.

---

## SCREEN 5 — AUDIT TRAIL
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** The full forensic surface. This is the heart of the quarantined Forensic Interface.

**Layout:** A single monospace table, full width, no cards, no avatars:
- `[ # ] [ Timestamp (UTC)     ] [ Actor   ] [ Event         ] [ Hash    ] [ Chain  ]`
- `[ 1 ] [ 2026-08-14 09:12:44 ] [ Party A ] [ draft_created ] [ 1b7e…a9 ] [ —      ]`
- `[ 2 ] [ 2026-08-14 09:20:11 ] [ Party A ] [ sent          ] [ 4c02…f1 ] [ ok 1-2 ]`
- `[ 3 ] [ 2026-08-14 14:02:03 ] [ Party B ] [ viewed        ] [ 77aa…0c ] [ ok 2-3 ]`
- `[ 4 ] [ 2026-08-14 14:05:37 ] [ Party B ] [ sealed        ] [ 8f3a…21 ] [ ok 3-4 ]`
- `[ 5 ] [ 2026-08-14 14:05:38 ] [ Witness ] [ witnessed     ] [ e21d…8f ] [ ok 4-5 ]`

**Hash chain column:** Each row visibly verifies against its predecessor. A broken link renders as `[ FAIL 3-4 — chain broken ]` and the row is flagged, not hidden.

**Row expansion:** Selecting a row reveals the raw evidentiary payload (auth log reference, IP record class, hash inputs) — byte-level honesty on demand.

**Hierarchy:** Table > chain integrity > row detail. Filters exist but are subordinate; the default view is the complete, unfiltered record.

**States:** Chain intact / chain broken / record sealed (locked). No "loading skeletons" that fake data — the table appears whole or states `[ Retrieving record ]`.

**Microcopy tone:** None, by design. The table speaks. Column headers are the only copy.

**Load-bearing brand behaviors:** Brackets + monospace as the forensic voice; hash-chain visualization as proof-of-witness; the refusal to summarize away inconvenient rows.

---

## SCREEN 6 — SUCCESS STATE
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** Confirmation of sealing. Explicitly: **no confetti, no animation bursts, no "You're all set!", no SaaS celebration tropes.**

**Layout:** Centered, sparse. Three elements only:
1. The deboss impression, now at rest (low-contrast relief).
2. One line: `Sealed and witnessed.`
3. One evidentiary line in monospace: `[ 8f3a9c…e21d — 2026-08-14 14:05:38 UTC ]`
Plus one quiet action: "View certificate."

**Hierarchy:** Statement > hash > action. The success state is a *receipt*, not a reward.

**States:** Single state. Success does not animate; it *settles*.

**Microcopy tone:** The tone of a notary stamping a page and sliding it back across the desk. Two words carry the brand: "Sealed and witnessed."

**Load-bearing brand behaviors:** Restraint as a brand asset; the hash presented as the *content* of success; the transition from action to record.

---

## SCREEN 7 — ERROR / TAMPER-DETECTED STATE
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** Alarm without cybersecurity panic. The Witness reports a fact; it does not scream.

**Layout:**
1. **Statement line:** `This document does not match its seal.` — set in the same quiet type as every other verdict. No red full-bleed background, no flashing.
2. **Forensic block (the brackets do the alarming):**
   - `[ Expected hash   8f3a9c…e21d ]`
   - `[ Observed hash   41b7c0…9aa3 ]`
   - `[ Mismatch        byte range 1,204–1,209 ]`
   - `[ Original seal   intact — 2026-08-14 14:05:38 UTC ]`
3. **Actions:** "View original sealed version" (primary) / "Open dispute" (secondary). The Witness *preserves the original* — that is the reassurance.

**Color behavior (exploratory):** Alarm is signaled by **weight and structure** (double brackets, heavier rules, the amber-oxide accent reserved for integrity events) — never by panic red, never by warning iconography.

**States:** Hash mismatch / revoked seal / unknown document / service unavailable (the only true "error": `The Witness is temporarily unreachable. Your sealed records are unaffected.`).

**Microcopy tone:** Factual, non-accusatory. "This document differs from the sealed original" — never "WARNING: FORGED DOCUMENT DETECTED."

**Load-bearing brand behaviors:** The brand's calm is most load-bearing at the worst moment; the original is always recoverable; the forensic interface escalates in *density*, not in *volume*.

---

## SCREEN 8 — DASHBOARD
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** Calm authority vs. metric noise. This is a records office, not an analytics cockpit.

**Layout zones:**
1. **Header:** Wordmark placeholder + one line: `12 documents under witness.` Not "Dashboard," not "Overview."
2. **Document register (primary, ~70%):** A table — lighter than the audit table but structurally related: document name, parties, state (bracketed: `[sealed]`, `[witnessed]`), date. No glossy thumbnails.
3. **Quiet summary strip (secondary):** Three counts only: `[ 9 witnessed ] [ 2 awaiting parties ] [ 1 disputed ]`. No charts, no trend lines, no "activity this week" graphs. Numbers that matter to a dispute, not to engagement.

**Hierarchy:** Register > state > counts. The dashboard's job is retrieval and orientation, not engagement.

**States:** Empty state reads: `No documents yet. Sealed documents will appear here as a permanent record.` — an institutional promise, not an onboarding cartoon.

**Microcopy tone:** Registrar's office. Nouns over verbs, records over metrics.

**Load-bearing brand behaviors:** The refusal of metric noise as a *design position*; the register table as a civilized descendant of the forensic table; the word "permanent" earned by structure.

---

## SCREEN 9 — MOBILE (375px)
*CONCEPT PROTOTYPE — EXPLORATION*

**Purpose:** What survives at 375px? The verdict: **the evidence survives; the ceremony compresses.**

**What survives intact:**
- The verdict line (`Sealed and witnessed.` / `This document is authentic.`) — always first, always one line.
- The evidentiary bracket block — monospace tables become vertically stacked bracket pairs (label above, value below), never truncated hashes; hashes wrap with a visible continuation marker.
- The tripartite structure — collapses from three columns to a three-row stack: Party A / Party B / Witness, order preserved.
- The deboss moment on sealing — a single haptic pulse + the displacement micro-animation. The one place haptics are permitted: the seal should *feel* like pressure.

**What is sacrificed:**
- The horizontal lifecycle rail becomes a vertical appended list (chronology downward, like a ledger page).
- Side-by-side hash comparison (tamper screen) becomes stacked `[expected]` / `[observed]` blocks with the differing bytes highlighted inline.
- Full audit table becomes a summary card (`[ 6 entries — chain intact ]`) with "View full record" deferring to larger viewports. Forensic completeness is never *faked* on small screens; it is honestly deferred.

**Hierarchy:** Verdict > parties > evidence > actions. Thumb-reach primary action ("Seal document") anchors bottom; destructive/dispute actions never sit under the thumb.

**Microcopy tone:** Unchanged. Small screen, same register — the Witness does not become casual in your pocket.

**Load-bearing brand behaviors:** Hash legibility (wrapping, not truncating); the haptic seal; vertical ledger chronology; honest deferral of forensic depth.

---

## Product-layer requirements the identity system must satisfy

- **A deboss that renders in three media:** screen (light/shadow displacement, flat-first, no skeuomorphic leather-and-stitching), print (blind-emboss or single-plate relief on the certificate), and 16px favicon (the impression reads as a mark, not a smudge).
- **A tripartite layout system:** the identity must provide a repeatable three-entity structure (A / B / Witness) that works as UI strip, certificate columns, and stacked mobile rows — tripartite symmetry is a *grid behavior*, not an illustration.
- **Two typographic voices, one family logic:** a quiet institutional voice for states and verdicts, and a monospace forensic voice for evidence — the identity must spec both and define exactly when each speaks (brackets = forensic only, quarantined to product).
- **The 45-degree rhombic nuqta grid as invisible structure:** proportions of cards, rails, tables, and the certificate must derive from it without ever rendering as visible "Islamic pattern" decoration.
- **A non-red alarm language:** the palette must include an integrity-event accent (exploratory amber-oxide) so that tamper states alarm through structure and weight, never through panic red or warning iconography.
- **State-change as brand motion:** the identity's motion language is *displacement and settling* (press, impress, rest) — no celebratory animation vocabulary may exist in the system at all.
- **Name-independence:** every screen above functions with "Khatim," "Nexus Trust," or any fallback — the Witness role is carried by structure (triad, brackets, deboss), never by the wordmark.
- **Monospace that survives print and 375px:** hash strings must wrap gracefully and remain verifiable on paper and phone alike.

## Concepts rejected at product layer

- **Confetti / celebration success states** — success is a receipt, not a reward; celebration undermines the solemnity of attestation.
- **Panic-red tamper alerts and warning iconography** — the Witness reports facts; alarm-by-structure replaces alarm-by-color.
- **Progress bars and percentage completion on the lifecycle** — the record is append-only fact, not a gamified funnel; "67% signed" is speculation, not evidence.
- **Metric-noise dashboards (charts, trends, engagement stats)** — a records office, not an analytics cockpit; only counts that matter in a dispute appear.
- **Skeuomorphic wax seals, leather textures, stamp-slam animations** — the deboss is light and displacement, not costume; cheap physicality destroys institutional credibility.
- **Shield / padlock / checkmark-hero verification badges** — forbidden by anti-pattern; the verdict is a sentence plus a hash, not an icon.
- **Truncated hashes without full-value access** — an abbreviated hash that cannot be expanded is theater, not evidence.
- **Deleting or rewriting history on revoke/dispute** — revocation is appended, never erased; the immutable ledger is the product's entire claim to truth.
- **Marketing-tier forensic aesthetics (brackets/monospace on landing pages)** — the Forensic Interface stays quarantined in product; leaking it upward makes the brand look litigious and paranoid.
- **Casual mobile voice ("Oops!", "Yay!")** — register is invariant across viewports; the Witness does not code-switch.
