# NIH Data Accelerator Project Planning Template

This Overleaf-compatible LaTeX project adapts the supplied template into an English-language project planning document using the provided NIH Data Accelerator logo and the requested main green color, Hex `#588B3E`.

## Start in Overleaf

1. Create a new project by uploading the ZIP file.
2. Confirm that `main.tex` is the main document.
3. Use the **pdfLaTeX** compiler. Overleaf will run **Biber** automatically for references.
4. Edit the metadata block at the top of `main.tex`.
5. Replace bracketed prompts and example rows in the files under `sections/`.
6. Change `\showguidancetrue` to `\showguidancefalse` in `main.tex` before final release.

## Structure

- `main.tex`: metadata, section order, bibliography, and guidance toggle.
- `common/accelerator.cls`: page layout, color palette, headings, tables, header/footer, and reusable commands.
- `common/titlepage.tex`: branded cover page.
- `sections/`: modular project-planning sections.
- `images/nih-data-accelerator-logo.png`: supplied logo converted to PNG.
- `references.bib`: bibliography file with one clearly marked example entry.

## Common edits

- Main brand color: edit `AcceleratorGreen` in `common/accelerator.cls`.
- Paper size: change `letterpaper` to `a4paper` in `main.tex`.
- Add a section: create a `.tex` file under `sections/` and add an `\input{...}` line in `main.tex`.
- Add a figure: place the file under `images/` and use `\includegraphics`.
- Add a citation: add the source to `references.bib`, then use `\parencite{key}` or `\textcite{key}`.

## Template helpers

- `\placeholder{...}` formats text that must be replaced.
- `\guidance{...}` creates drafting guidance that disappears when guidance is switched off.
- `planningbox` creates a green highlighted information box.
- `\TableHead{...}` creates a branded table header cell.
- `\StatusDraft`, `\StatusOnTrack`, `\StatusAtRisk`, `\StatusBlocked`, and `\StatusComplete` create status badges.
