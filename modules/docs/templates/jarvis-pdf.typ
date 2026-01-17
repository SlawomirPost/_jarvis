// =============================================================================
// JARVIS PDF TEMPLATE — Szablon Typst dla dokumentów Jarvis
// =============================================================================
// Wersja: 1.0
// Data: 17.01.2026
// Zgodność: STYLE_GUIDE.md (A4, Calibri 11pt, marginesy 2cm)
// =============================================================================

// --- KONFIGURACJA DOKUMENTU ---
#let jarvis-doc(
  title: none,
  author: "Jarvis",
  date: datetime.today(),
  lang: "pl",
  show-toc: false,
  body
) = {
  // Metadane dokumentu
  set document(
    title: title,
    author: author,
  )

  // Strona: A4, marginesy 2cm
  set page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
    numbering: "1",
    number-align: center,
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 9pt, fill: gray)
        title
        h(1fr)
        date.display("[day].[month].[year]")
      }
    },
  )

  // Typografia: Calibri 11pt (fallback: sans-serif)
  set text(
    font: ("Calibri", "Arial", "Helvetica"),
    size: 11pt,
    lang: lang,
    hyphenate: true,
  )

  // Akapity: justowanie, odstęp 0.65em
  set par(
    justify: true,
    leading: 0.65em,
    first-line-indent: 0pt,
  )

  // Nagłówki
  set heading(numbering: "1.1")
  show heading.where(level: 1): it => {
    set text(size: 16pt, weight: "bold")
    v(1em)
    it
    v(0.5em)
  }
  show heading.where(level: 2): it => {
    set text(size: 13pt, weight: "bold")
    v(0.8em)
    it
    v(0.3em)
  }
  show heading.where(level: 3): it => {
    set text(size: 11pt, weight: "bold")
    v(0.5em)
    it
    v(0.2em)
  }

  // Linki — niebieskie, podkreślone
  show link: it => {
    set text(fill: rgb("#0066cc"))
    underline(it)
  }

  // Kod inline — szare tło
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  // Bloki kodu — ramka z szarym tłem
  show raw.where(block: true): block.with(
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )

  // Cytaty — lewy pasek
  show quote: it => {
    block(
      stroke: (left: 3pt + luma(200)),
      inset: (left: 12pt, y: 6pt),
      it.body
    )
  }

  // Tabele — profesjonalne formatowanie
  set table(
    stroke: 0.5pt + luma(180),
    inset: 8pt,
  )
  show table.cell.where(y: 0): set text(weight: "bold")
  show table.cell.where(y: 0): set table.cell(fill: luma(230))

  // --- STRONA TYTUŁOWA ---
  if title != none {
    align(center)[
      #v(3cm)
      #text(size: 24pt, weight: "bold")[#title]
      #v(1cm)
      #if author != none {
        text(size: 12pt)[#author]
      }
      #v(0.5cm)
      #text(size: 11pt, fill: gray)[#date.display("[day].[month].[year]")]
      #v(2cm)
    ]

    if show-toc {
      outline(title: "Spis treści", indent: auto)
      pagebreak()
    }
  }

  // --- TREŚĆ ---
  body
}

// --- POMOCNICZE FUNKCJE ---

// Podświetlenie ważnych informacji
#let highlight-box(title: none, body, color: rgb("#e3f2fd")) = {
  block(
    fill: color,
    stroke: 1pt + color.darken(30%),
    radius: 4pt,
    inset: 12pt,
    width: 100%,
  )[
    #if title != none {
      text(weight: "bold")[#title]
      parbreak()
    }
    #body
  ]
}

// Ostrzeżenie
#let warning(body) = highlight-box(
  title: "Uwaga",
  color: rgb("#fff3e0"),
  body
)

// Informacja
#let info(body) = highlight-box(
  title: "Informacja",
  color: rgb("#e3f2fd"),
  body
)

// Sukces
#let success(body) = highlight-box(
  title: none,
  color: rgb("#e8f5e9"),
  body
)
