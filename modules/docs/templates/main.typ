// =============================================================================
// JARVIS PDF — Główny plik kompilacji
// =============================================================================
// Użycie: typst compile main.typ output.pdf
// Przed kompilacją: zamień content.typ na właściwą treść
// =============================================================================

#import "jarvis-pdf.typ": jarvis-doc, warning, info, success, highlight-box

#show: jarvis-doc.with(
  title: "Tytuł dokumentu",  // ← Zmień na właściwy tytuł
  author: "Jarvis",
  date: datetime.today(),
  show-toc: false,  // true = pokaż spis treści
)

// --- TREŚĆ DOKUMENTU ---
// Poniżej wklej lub zaimportuj treść wygenerowaną przez Pandoc

#include "content.typ"
