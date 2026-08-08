\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{xcolor}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{∃}{\ensuremath{\mathnormal\exists}}
\newunicodechar{∄}{\ensuremath{\mathnormal\nexists}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{∨}{\ensuremath{\mathnormal\vee}}
\newunicodechar{∈}{\ensuremath{\mathnormal\in}}
\newunicodechar{∉}{\ensuremath{\mathnormal\notin}}
\newunicodechar{∋}{\ensuremath{\mathnormal\ni}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{≈}{\ensuremath{\mathnormal\approx}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{⟨}{\ensuremath{\mathnormal\langle}}
\newunicodechar{⟩}{\ensuremath{\mathnormal\rangle}}
\newunicodechar{∎}{\ensuremath{\mathnormal\blacksquare}}
\newunicodechar{∶}{\ensuremath{\mathnormal\colon\!\!}}
\newunicodechar{⊹}{\ensuremath{\mathnormal\dag}}
\newunicodechar{▹}{\ensuremath{\mathnormal\triangleright}}
\newunicodechar{𝕗}{\ensuremath{\mathnormal{\mathbb{f}}}}
\newunicodechar{ℙ}{\ensuremath{\mathnormal{\mathbb{P}}}}
\newunicodechar{𝔽}{\ensuremath{\mathnormal{\mathbb{F}}}}
\newunicodechar{𝕊}{\ensuremath{\mathnormal{\mathbb{S}}}}
\newunicodechar{𝕄}{\ensuremath{\mathnormal{\mathbb{M}}}}
\newunicodechar{ℕ}{\ensuremath{\mathnormal{\mathbb{N}}}}
\newunicodechar{ℝ}{\ensuremath{\mathnormal{\mathbb{R}}}}
\newunicodechar{ℂ}{\ensuremath{\mathnormal{\mathbb{C}}}}
\newunicodechar{𝔹}{\ensuremath{\mathnormal{\mathbb{B}}}}
\newunicodechar{𝕍}{\ensuremath{\mathnormal{\mathbb{V}}}}
\newunicodechar{ν}{\ensuremath{\mathnormal{\nu}}}
\newunicodechar{μ}{\ensuremath{\mathnormal{\mu}}}
\newunicodechar{◆}{\ensuremath{\mathnormal\blackdiamond}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\AgdaFontStyle{b}}}}
\newunicodechar{≥}{\ensuremath{\mathnormal{\geq}}}
\newunicodechar{ϕ}{\ensuremath{\mathnormal{\phi}}}
\newunicodechar{χ}{\ensuremath{\mathnormal{\chi}}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\wedge}}}
\newunicodechar{∅}{\ensuremath{\mathnormal{\emptyset}}}
\newunicodechar{∣}{\ensuremath{\mathnormal{|}}}
\newunicodechar{⁇}{\ensuremath{\mathnormal{\mathrm{?\!?}}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}
\newunicodechar{ℓ}{\ensuremath{\mathnormal{\ell}}}
\newunicodechar{σ}{\ensuremath{\mathnormal{\sigma}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}
\newunicodechar{ₘ}{\ensuremath{\mathnormal{_\mathsf{m}}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_\mathsf{s}}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}
\newunicodechar{⍉}{\ensuremath{\mathnormal{∘\hspace{-0.455em}\backslash}}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}
\newunicodechar{ᵢ}{\ensuremath{\mathnormal{_i}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₒ}{\ensuremath{\mathnormal{_o}}}
\newunicodechar{ₚ}{\ensuremath{\mathnormal{_p}}}
\newunicodechar{ₙ}{\ensuremath{\mathnormal{_n}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{′}{\ensuremath{\mathnormal{'}}}
\newunicodechar{⊎}{\ensuremath{\mathnormal{\uplus}}}
\newunicodechar{≗}{\ensuremath{\mathnormal{\circeq}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\IC\AgdaInductiveConstructor
\newcommand\OpF[1]{\AgdaOperator{\F{#1}}}

\title{le me'oi .Agda.\ ke co'e ja velcki be tu'a la'o zoi.\ RISC-V\ .zoi.}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o bau la .lojban.\ joi la'oi .Agda.\ la .varik.\ cu ciksi tu'a la'o zoi.\ RISC-V\ .zoi.\sds  .i na mulno pe'a
\end{abstract}

\section{le vrici}

\begin{code}
{-# OPTIONS --safe #-}

module Arvis where
open import Level
  using (
    Level
  )
  renaming (
    suc to lsuc;
    zero to 0ₗ
  )
open import Data.Fin
  as 𝔽
  using (
  )
  renaming (
    Fin to 𝔽
  )
open import Data.Nat
  as ℕ
  using (
    _<?_;
    _<_;
    ℕ
  )
open import Data.Vec
  as 𝕍
  using (
    Vec
  )
open import Function
  using (
    typeOf;
    _on_;
    _∘_;
    _$_
  )
  renaming (
    _|>_ to _▹_
  )
open import Data.Product
  using (
    _×_;
    _,_
  )
open import Data.Nat.DivMod
  using (
    _mod_
  )
open import Relation.Nullary
  using (
    Dec;
    yes;
    ¬_;
    no
  )
open import Data.Vec.Properties
  as 𝕍P
  using (
  )
open import Relation.Nullary.Decidable
  using (
    False
  )
open import Relation.Binary.PropositionalEquality
  as _≡_
  using (
    _≡_
  )
\end{code}

\section{le rucyca'a se ctaipe}

\begin{code}
record Rucyca'a (b r : ℕ) : Set where
  field
    reg : Vec (𝔽 b) r
\end{code}

\section{le skami se ctaipe}

\begin{code}
record Skami {a} (b r m : ℕ) (A : Set a) : Set (lsuc a) where
  inductive
  field
    rucyca'a : Rucyca'a b r
    mem : Vec (𝔽 b) m
    vrici : A
    Ecall : typeOf rucyca'a
          → typeOf mem
          → typeOf vrici
          → Skami b r m A
\end{code}

\section{le co'e ja midnoi se ctaipe}

\begin{code}
record Instruction {a} (A : Set a) : Set (lsuc a Level.⊔ lsuc 0ₗ) where
  field
    Mapti : (b r m : ℕ) → Set
    Mapti? : (b r m : ℕ) → Dec $ Mapti b r m
    f : {b r m : ℕ} → Mapti b r m → Skami b r m A → Skami b r m A
\end{code}

\begin{code}
module Instructions where
  module add (r₁ r₂ r₃ : ℕ) where
    record M (b r _ : ℕ) : Set where
      field
        nz : False $ b ℕ.≟ 0
        m₁ : r₁ < r
        m₂ : r₂ < r
        m₃ : r₃ < r

    f : ∀ {a} → {A : Set a}
      → {b r m : ℕ}
      → M b r m
      → Skami b r m A
      → Skami b r m A
    f {b = b} {r} m sk = record sk {rucyca'a = rc}
      where
      rc : Rucyca'a b r
      rc = record rx {reg = r2d2}
        where
        rx = Skami.rucyca'a sk
        r2d2 : Vec (𝔽 b) r
        r2d2 = 𝕍.updateAt r₁' (λ _ → r₂+r₃) reg
          where
          open M m
          r₁' = 𝔽.fromℕ< m₁
          reg = Rucyca'a.reg rx
          r₂+r₃ = _mod_ (l r₂' ℕ.+ l r₃') b {nz}
            where
            r₂' = 𝔽.fromℕ< m₂
            r₃' = 𝔽.fromℕ< m₃
            l = 𝔽.toℕ ∘ 𝕍.lookup reg

    M? : (b r m : ℕ) → Dec $ M b r m
    M? b r _ with b ℕ.≟ 0 | r₁ <? r | r₂ <? r | r₃ <? r
    ... | no Nd | yes m₁ | yes m₂ | yes m₃ = yes $ record {
      nz = N⇒F Nd;
      m₁ = m₁;
      m₂ = m₂;
      m₃ = m₃
      }
      where
      N⇒F : ∀ {a} → {A : Set a} → {A? : Dec A} → ¬ A → False A?
      N⇒F = {!!}
    ... | yes d | _ | _ | _  = no $ Y⇒NF d ∘ M.nz
      where
      Y⇒NF : ∀ {a} → {A : Set a} → A → {A? : Dec A} → ¬ False A?
      Y⇒NF = {!!}
    ... | _ | no m₁ | _ | _  = no $ m₁ ∘ M.m₁
    ... | _ | _ | no m₂ | _  = no $ m₂ ∘ M.m₂
    ... | _ | _ | _ | no m₃  = no $ m₃ ∘ M.m₃

    add : ∀ {a} → {A : Set a} → Instruction A
    add = record {
      Mapti = M ;
      Mapti? = M?;
      f = f}

    module Veritas where
      dun⁻¹ : ∀ {a} → {A : Set a}
            → (b r mx : ℕ)
            → (sk : Skami b r mx A)
            → (r₁ r₂ r₃ : ℕ)
            → (m : Instruction.Mapti {A = A} add b r mx)
            → let sk' = sk ▹ Instruction.f add m in
              (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ 𝔽.fromℕ< (M.m₁ m)
            → ((_≡_ on (λ x → 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a x) r₄))
                sk
                sk')
      dun⁻¹ b r _ sk r₁ r₂ r₃ m r₄ N = _≡_.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ _≡_.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open _≡_.≡-Reasoning
        rx = Skami.rucyca'a sk
        rx' = sk ▹ Instruction.f add m ▹ Skami.rucyca'a

      dun : ∀ {a} → {A : Set a}
          → (b r mx : ℕ)
          → (sk : Skami b r mx A)
          → (r₁ r₂ r₃ : ℕ)
          → (m : Instruction.Mapti {A = A} add b r mx)
          → let sk' = sk ▹ Instruction.f add m in
            let r₁' = 𝔽.fromℕ< $ M.m₁ m in
            let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f add m sk) r₁')
              (let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
               let r₂' = 𝔽.fromℕ< (M.m₂ m) in
               let r₃' = 𝔽.fromℕ< (M.m₃ m) in
               _mod_ (l r₂' ℕ.+ l r₃') b {M.nz m}))
      dun b r mx sk r₄ r₅ r₆ m = 𝕍P.lookup∘updateAt r₁' $ Rucyca'a.reg rx
        where
        rx = Skami.rucyca'a sk
        r₁' = 𝔽.fromℕ< $ M.m₁ m
        open _≡_.≡-Reasoning

  add = add.add

  module mv (r₁ r₂ : ℕ) where
    mv : ∀ {a} → {A : Set a} → Instruction A
    mv = record {
      Mapti = add.M _ _ _;
      Mapti? = add.M? _ _ _;
      f = Instruction.f $ add r₁ r₂ 0
      }

  module mul (r₁ r₂ r₃ : ℕ) where
    f : {b r m : ℕ} → add.M r₁ r₂ r₃ b r m → Rucyca'a b r → Rucyca'a b r
    f {b} {r} {m} M rx = record rx {reg = xd}
      where
      reg = Rucyca'a.reg rx
      xd = 𝕍.updateAt r₁' (λ _ → r₂*r₃) reg
        where
        open add.M M
        r₁' = 𝔽.fromℕ< m₁
        r₂*r₃ = _mod_ (l r₂' ℕ.* l r₃') b {nz}
          where
          r₂' = 𝔽.fromℕ< m₂
          r₃' = 𝔽.fromℕ< m₃
          l = 𝔽.toℕ ∘ 𝕍.lookup reg

    mul : ∀ {a} → {A : Set a} → Instruction A
    mul {A = A} = record {
      Mapti = add.M _ _ _;
      Mapti? = add.M? _ _ _;
      f = d
      }
      where
      d : {b r m : ℕ}
        → add.M r₁ r₂ r₃ b r m
        → Skami b r m A
        → Skami b r m A
      d = λ M sk → record sk {rucyca'a = f M $ Skami.rucyca'a sk}

    module Veritas where
      dun⁻¹ : ∀ {a} → {A : Set a}
            → (b r mx : ℕ)
            → (sk : Skami b r mx A)
            → (r₁ r₂ r₃ : ℕ)
            → (m : Instruction.Mapti {A = A} mul b r mx)
            → let sk' = sk ▹ Instruction.f mul m in
              (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ 𝔽.fromℕ< (add.M.m₁ m)
            → ((_≡_ on (λ x → 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a x) r₄))
                sk
                sk')
      dun⁻¹ b r _ sk r₁ r₂ r₃ m r₄ N = _≡_.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ _≡_.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open _≡_.≡-Reasoning
        rx = Skami.rucyca'a sk
        rx' = sk ▹ Instruction.f mul m ▹ Skami.rucyca'a

      dun : ∀ {a} → {A : Set a}
          → (b r mx : ℕ)
          → (sk : Skami b r mx A)
          → (r₁ r₂ r₃ : ℕ)
          → (m : Instruction.Mapti {A = A} mul b r mx)
          → let sk' = sk ▹ Instruction.f mul m in
            let r₁' = 𝔽.fromℕ< $ add.M.m₁ m in
            let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f mul m sk) r₁')
              (let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
               let r₂' = 𝔽.fromℕ< (add.M.m₂ m) in
               let r₃' = 𝔽.fromℕ< (add.M.m₃ m) in
               _mod_ (l r₂' ℕ.* l r₃') b {add.M.nz m}))
      dun b r mx sk r₄ r₅ r₆ m = 𝕍P.lookup∘updateAt r₁' $ Rucyca'a.reg rx
        where
        rx = Skami.rucyca'a sk
        r₁' = 𝔽.fromℕ< $ add.M.m₁ m
        open _≡_.≡-Reasoning
\end{code}
\end{document}
