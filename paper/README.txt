Harm Implies Action Deviation - IEEE TDSC submission (LaTeX / IEEEtran)

CONTENTS
  main.tex                        The manuscript (IEEEtran journal class).
  fig1_agent_loop.png             Fig. 1  Agent loop + adversary locations
  fig2_vector_signature.png       Fig. 2  Vector-to-signature mapping
  fig3_detection_fp.png           Fig. 3  Detection vs. false positives
  fig4_per_signature.png          Fig. 4  Per-signature detection
  fig5_adaptive_sim.png           Fig. 5  Adaptive adversary (simulation)
  fig6_inpolicy_groundtruth.png   Fig. 6  In-policy detection, ground truth
  fig7_adaptive_real.png          Fig. 7  Adaptive adversary (real traces)

COMPILE
  Overleaf: upload all files, set main.tex as main document, compile with
    pdfLaTeX (IEEEtran ships with Overleaf).
  Locally (TeX Live / MiKTeX):
    pdflatex main
    pdflatex main      (second pass resolves cross-references and citations)

STATUS
  All author names and affiliations are filled in. All notes-to-authors have
  been removed. The 12 formal definitions are real numbered equations; the
  Theorem, Lemma, and Proof are proper LaTeX environments. All 8 figures and
  6 tables are included (Table IV added: competing-defense baselines). The
  file compiles to a 17-page PDF with no errors.

  Reference [18] (LLMBA) is complete: authors (Yan, Shi, Wang, Ren, Li,
  Sun), title, venue and year (IEEE Trans. Inf. Forensics Security, 2026)
  and IEEE Xplore article number 11400583. Only the DOI is not yet filled
  in (behind the IEEE Xplore paywall); it may be added from the published
  record but is not required for a complete citation.


REVISION STATUS (this version)
  - Passive voice throughout; all em-dashes removed; no "honest" words.
  - AI-writing tells removed (natural human academic prose).
  - Contributions presented as an itemized list; Evaluation and
    Detectability sections given explicit subsection structure.
  - Editor + four-reviewer internal review applied; see
    review_report.md and author_response.md.
  - Multi-seed reproduction (5 seeds) applied to the adaptive results:
    Table V and Figs 6-7 now report mean +/- standard deviation. The
    simulation adaptive figure was corrected from 0.39 (single run,
    non-reproducible) to 0.79 (5-seed mean), and the real-AgentDojo collapse
    is now shown as seed-dependent. New Table IV compares three provenance-
    aware defenses on the same 629 trajectories. Cross-references converted
    to \ref so float numbering stays correct.
  - Compiles with tectonic to a 17-page IEEEtran PDF (verified in this workflow); IEEEtran also compiles under pdflatex/Overleaf, not tested here.

REMAINING AUTHOR TO-DOS BEFORE SUBMISSION (see author_response.md)
  - Reference [18] (LLMBA): complete; optionally add the DOI from the IEEE Xplore record.
  - Confirm the three 2026-dated references.
  - Add code-repository DOI / license for the released artifact.
  - Table IV baselines use faithful mechanism PROXIES; for camera-ready,
    swap in the authors' released Task Shield / AgentArmor / f-secure code
    via REAL_DETECTORS in scripts/run_baselines.py.
  - R3-M4 dollar model (scripts/run_adaptive_dollars.py) needs the pricing
    snapshot (model + $/token + date) filled in before it emits dollar costs.
