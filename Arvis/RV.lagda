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
\newunicodechar{≢}{\ensuremath{\mathnormal\nequiv}}
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
\newunicodechar{𝕃}{\ensuremath{\mathnormal{\mathbb{L}}}}
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
\newunicodechar{⁻}{\ensuremath{\mathnormal{^-}}}
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
\newunicodechar{₃}{\ensuremath{\mathnormal{_3}}}
\newunicodechar{₄}{\ensuremath{\mathnormal{_4}}}
\newunicodechar{₅}{\ensuremath{\mathnormal{_5}}}
\newunicodechar{ₘ}{\ensuremath{\mathnormal{_\mathsf{m}}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_\mathsf{s}}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{⊥}{\ensuremath{\mathnormal{\bot}}}
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
\newunicodechar{′}{\ensuremath{\mathnormal{\prime}}}
\newunicodechar{⊎}{\ensuremath{\mathnormal{\uplus}}}
\newunicodechar{≗}{\ensuremath{\mathnormal{\circeq}}}
\newunicodechar{⇒}{\ensuremath{\mathnormal{\Rightarrow}}}
\newunicodechar{ˢ}{\ensuremath{\mathnormal{^s}}}
\newunicodechar{⊔}{\ensuremath{\mathnormal{\sqcup}}}
\newunicodechar{⍨}{\ensuremath{\raisebox{-0.25ex}{\ddot\sim}}}

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

module Arvis.RV where
open import Level
  using (
    _⊔_;
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
open import Data.Sum
  as _⊎_
  using (
    inj₁;
    inj₂;
    _⊎_
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
    _∘₂_;
    _ˢ_;
    _∘_;
    _$_
  )
  renaming (
    _|>_ to _▹_;
    flip to _⍨
  )
open import Data.Bool
  using (
  )
  renaming (
    if_then_else_ to if
  )
open import Data.List
  as 𝕃
  using (
    List
  )
open import Data.Unit
  using (
    tt;
    ⊤
  )
open import Data.Empty
  as ⊥
  using (
    ⊥-elim
  )
open import Data.Product
  as Σ
  using (
    _×_;
    _,_
  )
open import Data.Integer
  as ℤ
  using (
    ℤ
  )
open import Data.Nat.DivMod
  as ℕ
  using (
    _mod_;
    _%_
  )
open import Relation.Nullary
  using (
    Dec;
    yes;
    ¬_;
    no
  )
open import Data.Fin.Properties
  as DFP
  using (
    toℕ-fromℕ<
  )
open import Data.Nat.Properties
  as ℕP
  using (
    m^n≡0⇒m≡0
  )
open import Data.Vec.Properties
  as 𝕍P
  using (
  )
open import Truthbrary.Record.Eq
  using (
    _≡ᵇ_;
    _≟_;
    Eq
  )
open import Relation.Nullary.Decidable
  using (
    isYes≗does;
    dec-false;
    dec-true;
    False
  )
open import Relation.Binary.PropositionalEquality
  as ≡
  using (
    cong;
    _≡_
  )

open import Arvis.Base
  using (
    Skami-S
  )
\end{code}

\section{le vrici je fancu}

\begin{code}
module 𝔽0 where
  f : {n : ℕ} → 𝔽 n → 𝔽 n
  f {0} ()
  f {ℕ.suc _} _ = 𝔽.zero

  module Veritas where
    d0 : {n : ℕ} → (x : 𝔽 n) → 0 ≡ 𝔽.toℕ (f x)
    d0 {0} ()
    d0 {ℕ.suc _} _ = ≡.refl

𝔽0 = 𝔽0.f
\end{code}

\begin{code}
≡⇒≡ᵇ : ∀ {a} → {A : Set a}
     → ⦃ _ : Eq A ⦄
     → {x z : A}
     → x ≡ z
     → x ≡ᵇ z ≡ Data.Bool.true
≡⇒≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-true (x ≟ z)
\end{code}

\begin{code}
¬≡⇒¬≡ᵇ : ∀ {a} → {A : Set a}
       → ⦃ _ : Eq A ⦄
       → {x z : A}
       → ¬_ $ x ≡ z
       → x ≡ᵇ z ≡ Data.Bool.false
¬≡⇒¬≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-false (x ≟ z)
\end{code}

\begin{code}
2^n≢0 : (n : ℕ) → False $ (2 ℕ.^ n) ≟ 0
2^n≢0 n with (2 ℕ.^ n) ≟ 0
... | no _ = tt
... | yes d = (λ ()) $ m^n≡0⇒m≡0 2 n d
\end{code}

\begin{code}
bitn : ℕ → ℕ → 𝔽 2
bitn n b = (_mod 2) $ ℕ._div_ n (2 ℕ.^ b) {2^n≢0 b}
\end{code}

\begin{code}
module log (b n : ℕ) where
  f : ℕ
  f = {!!}

  module Veritas where
    ml : n ℕ.≤_ $ b ℕ.^_ $ f ℕ.+ 1
    ml = {!!}

    zm : n ℕ.≥_ $ b ℕ.^ f
    zm = {!!}
\end{code}

\begin{code}
module ℕ→ℤ (n : ℕ) where
  f : ℤ
  f = {!!}

  module Veritas where
    x+ : Set Function.∋ {!!}
       → f ≡ ℤ.pos n
    x+ = {!!}

    x- : Set Function.∋ {!!}
       → f ≡ ℤ.negsuc {!!}
    x- = {!!}

ℕ→ℤ = ℕ→ℤ.f
\end{code}

\begin{code}
mod∘toℕ : {m : ℕ} → {f : 𝔽 $ ℕ.suc m} → f ≡ 𝔽.toℕ f mod _
mod∘toℕ = {!!}
\end{code}

\section{le rucyca'a se ctaipe}

\begin{code}
record Rucyca'a (b r : ℕ) : Set where
  field
    reg : Vec (𝔽 $ ℕ.suc b) r
    x0 : (ml : 0 ℕ.< r) → 𝔽.zero ≡ 𝕍.lookup reg (𝔽.fromℕ< ml)
\end{code}

\section{le skami se ctaipe}

\begin{code}
record Skami {a} (b r m : ℕ) (A : Set a) : Set (lsuc a) where
  inductive
  field
    pc : 𝔽 $ ℕ.suc b
    rucyca'a : Rucyca'a b r
    mem : Vec (𝔽 $ ℕ.suc b) m
    vrici : A
\end{code}

\section{le co'e ja midnoi se ctaipe}

\begin{code}
record Instruction {a} (A : Set a) (b r m : ℕ) : Set (lsuc a ⊔ lsuc 0ₗ) where
  field
    nibarda : ℕ
    f : Skami b r m A → Skami b r m A
\end{code}

\section{le co'e ja midnoi}

\begin{code}
module Instructions where
\end{code}

\begin{code}
  i-size : (b r m nibarda : ℕ) → ℕ
  i-size = {!!}
\end{code}

\begin{code}
  x0-vrici : {b r : ℕ}
           → (r₁ : 𝔽 r)
           → (n : 𝔽 $ ℕ.suc b)
           → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
           → (_≡_
               rc'
               (𝕍.updateAt
                 r₁
                 (λ _ → if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rc r₁) n)
                 rc))
           → (ml : 0 ℕ.< r)
           → let 0d = λ R → 𝔽.zero ≡ 𝕍.lookup R (𝔽.fromℕ< ml) in
             0d rc
           → 0d rc'
  x0-vrici {b = b} r₁ n rx rx' d ml d0 = ≡.trans d0 $ ≡.sym rxdun
    where
    *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) n
    rxdun = begin
      f rx' ≡⟨ cong f d ⟩
      f (𝕍.updateAt r₁ (λ _ → *r₁') rx) ≡⟨ ud ⟩
      f rx ∎
      where
      f = λ x → 𝕍.lookup x $ 𝔽.fromℕ< ml
      open ≡.≡-Reasoning
      ud : f (𝕍.updateAt r₁ (λ _ → *r₁') rx) ≡ f rx
      ud with 𝔽.fromℕ< ml ≟ r₁
      ... | no N = 𝕍P.lookup∘updateAt′ _ _ N _
      ... | yes d = begin
        f (𝕍.updateAt r₁ (λ _ → *r₁') rx)
          ≡⟨ lud $ 𝕍.updateAt r₁ (λ _ → *r₁') rx ⟩
        𝕍.lookup (𝕍.updateAt r₁ (λ _ → *r₁') rx) r₁
          ≡⟨ 𝕍P.lookup∘updateAt r₁ rx ⟩
        *r₁'
          ≡⟨ ≡.refl ⟩
        if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) n
          ≡⟨ d ▹ ≡.sym ▹ cong (λ d → if (𝔽.toℕ d ≡ᵇ 0) _ _) ⟩
        if (𝔽.toℕ n0 ≡ᵇ 0) (𝕍.lookup rx n0) n
          ≡⟨ 𝔽P.toℕ-fromℕ< _ ▹ cong (λ d → if (d ≡ᵇ 0) (f rx) n) ⟩
        f rx ∎
        where
        n0 = 𝔽.fromℕ< ml
        lud : (x : Vec (𝔽 $ ℕ.suc b) _)
            → f x ≡ 𝕍.lookup x r₁
        lud x = d ▹ cong (𝕍.lookup x)
        import Data.Fin.Properties
          as 𝔽P
\end{code}

\begin{code}
  0-dro-s : {b r : ℕ}
          → (i : 𝔽 r)
          → (n : 𝔽 $ ℕ.suc b)
          → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
          → (_≡_
              rc'
              (𝕍.updateAt
                i
                (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
                rc))
          → 𝔽.toℕ i ≡ 0
          → rc ≡ rc'
  0-dro-s i n rc rc' d d0 = ≡.trans d ud ▹ ≡.sym
    where
    ud = updateAt-id rc _ _ $ ≡⇒≡ᵇ d0 ▹ cong (λ b → if b *i n)
      where
      *i = 𝕍.lookup rc i
      updateAt-id : ∀ {a} → {A : Set a}
                  → {n : ℕ}
                  → (x : Vec A n)
                  → (i : 𝔽 n)
                  → (f : A → A)
                  → f (𝕍.lookup x i) ≡ 𝕍.lookup x i
                  → 𝕍.updateAt i f x ≡ x
      updateAt-id (_ 𝕍.∷ _) 𝔽.zero _ = cong (𝕍._∷ _)
      updateAt-id (_ 𝕍.∷ _ 𝕍.∷ xs) (𝔽.suc i) f = cong (_ 𝕍.∷_) ∘ rd
        where
        rd = updateAt-id (_ 𝕍.∷ xs) i f
\end{code}

\begin{code}
  N0-d-s : {b r : ℕ}
         → (i : 𝔽 r)
         → (n : 𝔽 $ ℕ.suc b)
         → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
         → (_≡_
             rc'
             (𝕍.updateAt
               i
               (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
               rc))
         → ¬_ $ 𝔽.toℕ i ≡ 0
         → 𝕍.lookup rc' i ≡ n
  N0-d-s i n rc rc' d N = begin
    𝕍.lookup rc' i ≡⟨ d ▹ cong (λ x → 𝕍.lookup x i) ⟩
    𝕍.lookup (𝕍.updateAt i _ _) i ≡⟨ 𝕍P.lookup∘updateAt i rc ⟩
    if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n ≡⟨ ≡.refl ⟩
    _ ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → if b (𝕍.lookup rc i) n) ⟩
    n ∎
    where
    open ≡.≡-Reasoning
\end{code}

\begin{code}
  N0-d-s' : {b r : ℕ}
          → (i : 𝔽 r)
          → (n : 𝔽 $ ℕ.suc b)
          → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
          → (_≡_
              rc'
              (𝕍.updateAt
                i
                (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
                rc))
          → (j : 𝔽 r)
          → ¬_ $ j ≡ i
          → 𝕍.lookup rc' j ≡ 𝕍.lookup rc j
  N0-d-s' i _ rc rc' d j N = begin
    𝕍.lookup rc' j ≡⟨ d ▹ cong (λ x → 𝕍.lookup x j) ⟩
    _ ≡⟨ 𝕍P.lookup∘updateAt′ j i N rc ⟩
    𝕍.lookup rc j ∎
    where
    open ≡.≡-Reasoning
\end{code}

\begin{code}
  Pc-Selidne : ∀ {a} → {A : Set a}
             → {b r m : ℕ}
             → ℕ
             → Skami b r m A
             → Skami b r m A
             → Set
  Pc-Selidne nibarda sk sk' = pc₁ ≡ (pc₂' + nibarda)
    where
    pc₂' = 𝔽.toℕ $ Skami.pc sk'
    pc₁ = Skami.pc sk
    _+_ : {n : ℕ} → ℕ → ℕ → 𝔽 $ ℕ.suc n
    _+_ {n} = (_mod ℕ.suc n) ∘₂ ℕ._+_
\end{code}

\begin{code}
  record RPc-S {a} {A : Set a}
               {b r m : ℕ}
               (is : List $ 𝔽 r)
               (x z : Skami b r m A) : Set a where
    private
      ra : Skami b r m A → Vec (𝔽 $ ℕ.suc b) r
      ra = Rucyca'a.reg ∘ Skami.rucyca'a

      D : ∀ {c} → {C : Set c} → (Skami b r m A → C) → Set c
      D f = f z ≡ f x

    field
      dr : (i : 𝔽 r)
         → ((j : 𝔽 _) → ¬_ $ i ≡ 𝕃.lookup is j)
         → D $ λ x → 𝕍.lookup (ra x) i
      dv : D Skami.vrici
      dm : D Skami.mem
\end{code}

\begin{code}
  record RPc-Sd {a} {A : Set a}
                {b r m : ℕ}
                (is : List $ 𝔽 r × 𝔽 (ℕ.suc b))
                (x z : Skami b r m A) : Set a where
    private
      ra : Skami b r m A → Vec (𝔽 $ ℕ.suc b) r
      ra = Rucyca'a.reg ∘ Skami.rucyca'a

    field
      rpcs : RPc-S (𝕃.map Σ.proj₁ is) x z
      dr' : (i : 𝔽 _)
          → (_≡_
              (Σ.proj₂ $ 𝕃.lookup is i)
              (𝕍.lookup
                (ra z)
                (Σ.proj₁ $ 𝕃.lookup is i)))

  0rpcs : ∀ {a} → {A : Set a}
        → {b r m : ℕ}
        → {r₁ : 𝔽 r}
        → {x z : Skami b r m A}
        → RPc-S 𝕃.[ 𝔽0 r₁ ] x z
        → RPc-S 𝕃.[] x z
  0rpcs {x = x} {z} R = record {
    dr = dr;
    dv = RPc-S.dv R;
    dm = RPc-S.dm R
    }
    where
    dr : (i : 𝔽 _)
       → (_ : (j : 𝔽 0)
            → ¬_ $ i ≡ 𝕃.lookup List.[] j)
       → ((λ f → f z ≡ f x)
           (λ x₁ →
              (𝕍.lookup
                (Rucyca'a.reg $ Skami.rucyca'a x₁)
                i)))
    dr 𝔽.zero f = ≡.trans {j = 𝔽.zero} {!!} {!!}
    dr (𝔽.suc i) f = RPc-S.dr R (𝔽.suc i) {!!}
\end{code}

\begin{code}
  record VMPc-S {a} {A : Set a}
                {b r m : ℕ}
                (is : List $ 𝔽 m)
                (x z : Skami b r m A) : Set a where
    private
      ma : Skami b r m A → Vec (𝔽 $ ℕ.suc b) m
      ma = Skami.mem

      D : ∀ {c} → {C : Set c} → (Skami b r m A → C) → Set c
      D f = f z ≡ f x

    field
      dm : (j : 𝔽 m)
         → ((i : 𝔽 _) → ¬_ $ j ≡ 𝕃.lookup is i)
         → D $ λ x → 𝕍.lookup (ma x) j
\end{code}

\begin{code}
  -- OP r₁, r₂, r₃
  module op1x3 (b r m nibarda : ℕ)
               (r₁ r₂ r₃ : 𝔽 r)
               (opf : (_⊎_
                        ((_ _ : 𝔽 $ ℕ.suc b) → 𝔽 $ ℕ.suc b)
                        (ℕ → ℕ → ℕ))) where
    module f {a} {A : Set a} (sk : Skami b r m A) where
      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup rx r₂

      *r₃ : 𝔽 $ ℕ.suc b
      *r₃ = 𝕍.lookup rx r₃

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      *r₁'! : 𝔽 $ ℕ.suc b
      *r₁'! = (_⊎_.[_,_]
                (λ f → f *r₂ *r₃)
                (λ f → (_mod _) $ f (𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃)
                opf)

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) *r₁'!

      rx' : typeOf rx
      rx' = 𝕍.updateAt r₁ (λ _ → *r₁') rx

      x0 : (ml : 0 ℕ.< r) → 𝔽.zero ≡ 𝕍.lookup rx' (𝔽.fromℕ< ml)
      x0 ml = x0-vrici r₁ *r₁'! rx rx' ≡.refl ml x0'
        where
        x0' = Rucyca'a.x0 (Skami.rucyca'a sk) ml

      rc' : Rucyca'a b r
      rc' = record (Skami.rucyca'a sk) {reg = rx'; x0 = x0}

      f : Skami b r m A
      f = record sk {pc = *r₂; rucyca'a = rc'}

    op : ∀ {a} → {A : Set a} → Instruction A b r m
    op = record {
      nibarda = nibarda;
      f = f.f
      }

    module Veritas-S {a} {A : Set a} (sk : Skami b r m A) where
      sk' : Skami b r m A
      sk' = Instruction.f op sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ j N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd! : ¬_ $ 𝔽.toℕ r₁ ≡ 0
             → RPc-Sd 𝕃.[ r₁ , f.*r₁'! sk ] sk sk'
      rpcsd! N = record {
        rpcs = rpcs;
        dr' = λ {𝔽.zero → ≡.sym $ begin
            𝕍.lookup rx' r₁ ≡⟨ 𝕍P.lookup∘updateAt r₁ _ ⟩
            *r₁' ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → if b (𝕍.lookup rx r₁) *r₁'!) ⟩
            *r₁'! ∎
          }
        }
        where
        open f sk
        open ≡.≡-Reasoning

      0-dro : 𝔽.toℕ r₁ ≡ 0
            →((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
               sk
               sk')
      0-dro = 0-dro-s r₁ *r₁'! (rvra sk) _ ≡.refl
        where
        rvra = Rucyca'a.reg ∘ Skami.rucyca'a
        open f sk

      rpcsd0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd0 d = record {
        dr' = λ ();
        rpcs = record {
          dr = dr;
          dv = ≡.refl;
          dm = ≡.refl
          }
        }
        where
        dr : (j : 𝔽 r)
           → (_ : (i : 𝔽 0) → ¬_ $ j ≡ 𝕃.lookup 𝕃.[] i)
           → ((λ f → f sk' ≡ f sk)
               (λ x →
                  (𝕍.lookup
                    (Rucyca'a.reg $ Skami.rucyca'a x)
                    j)))
        dr 𝔽.zero = {!!}
        dr (𝔽.suc f) = {!!}
\end{code}

\begin{code}
  -- | op r₁, r₂ , imm
  module op1x1i (b r mx nibarda : ℕ)
                (r₁ r₂ : 𝔽 r)
                (imm : 𝔽 $ i-size b r mx nibarda)
                (opf : ℕ → ℕ → ℕ) where
    module f {a} {A : Set a}
             (sk : Skami b r mx A) where

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup reg r₂

      *r₁'! : 𝔽 $ ℕ.suc b
      *r₁'! = opf (𝔽.toℕ imm) (𝔽.toℕ *r₂) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup reg r₁) *r₁'!

      reg' : Vec (𝔽 $ ℕ.suc b) r
      reg' = 𝕍.updateAt r₁ (λ _ → *r₁') reg

      rx : Rucyca'a b r
      rx = record (Skami.rucyca'a sk) {reg = reg'; x0 = x0}
        where
        x0 = x0-vrici r₁ _ reg _ ≡.refl ˢ x0'
          where
          x0' = Rucyca'a.x0 $ Skami.rucyca'a sk

      f : Skami b r mx A
      f = record sk {rucyca'a = rx; pc = pc+nb}

    op : ∀ {a} → {A : Set a} → Instruction A b r mx
    op = record {
      nibarda = nibarda;
      f = f.f
      }
\end{code}

\begin{code}
  -- | op r₁, r₂, imm
  module op1x1i+ {a}
                 (A : Set a)
                 (b r mx nibarda : ℕ)
                 (r₁ r₂ : 𝔽 r)
                 (imm : 𝔽 $ i-size b r mx nibarda)
                 (opf : ℕ
                      → ℕ
                      → A
                      → Rucyca'a b r
                      → Vec (𝔽 $ ℕ.suc b) mx
                      → Skami b r mx A) where
    module f (sk : Skami b r mx A) where

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup reg r₂

      f : Skami b r mx A
      f = (record
            (opf
              (𝔽.toℕ imm)
              (𝔽.toℕ *r₂)
              (Skami.vrici sk)
              (Skami.rucyca'a sk)
              (Skami.mem sk))
            {pc = pc+nb})

    op : Instruction A b r mx
    op = record {
      nibarda = nibarda;
      f = f.f
      }
\end{code}

\begin{code}
  module jalr {b r m : ℕ} (r₁ r₂ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    module f {a} {A : Set a} (sk : Skami b r m A) where

      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup rx r₂

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) pc+nb

      rx' : typeOf rx
      rx' = 𝕍.updateAt r₁ (λ _ → *r₁') rx

      x0 : (ml : 0 ℕ.< r) → 𝔽.zero ≡ 𝕍.lookup rx' (𝔽.fromℕ< ml)
      x0 ml = x0-vrici r₁ pc+nb rx rx' ≡.refl ml x0'
        where
        x0' = Rucyca'a.x0 (Skami.rucyca'a sk) ml

      rc' : Rucyca'a b r
      rc' = record (Skami.rucyca'a sk) {reg = rx'; x0 = x0}

      f : Skami b r m A
      f = record sk {pc = *r₂; rucyca'a = rc'}

    jalr : ∀ {a} → {A : Set a} → Instruction A b r m
    jalr = record {
      nibarda = nibarda;
      f = f.f
      }

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      sk' : Skami b r m A
      sk' = Instruction.f jalr sk

      dpc : (_≡_
              (𝕍.lookup rx r₂)
              (Skami.pc sk'))
      dpc = _≡_.refl

      drx : (r₄ : 𝔽 r)
          → ¬_ $ r₄ ≡ r₁
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            ((_≡_ on (λ s → 𝕍.lookup (rx s) r₄))
              sk
              sk')
      drx _ N = 𝕍P.lookup∘updateAt′ _ _ N _ ▹ ≡.sym

      drx' : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → (r₄ : 𝔽 r)
           → Set Function.∋ {!!}
           → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
             ((_≡_ on ((𝕍.lookup ⍨) r₄ ∘ rx))
               sk
               sk')
           → ¬_ $ r₄ ≡ r₁
      drx' = {!!}

      0-dro : 𝔽.toℕ r₁ ≡ 0
            →((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
               sk
               sk')
      0-dro = 0-dro-s r₁ pc+nb (rvra sk) _ ≡.refl
        where
        rvra = Rucyca'a.reg ∘ Skami.rucyca'a

      rpcs : RPc-S 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ j N → drx j (N 𝔽.zero) ▹ ≡.sym;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

      rpcsd0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd0 = {!!}
\end{code}

\begin{code}
  module jr {b r m : ℕ} (r₁ : 𝔽 r) where
    f0 : 𝔽 r
    f0 = 𝔽0 r₁

    jr : ∀ {a} → {A : Set a} → Instruction A b r m
    jr = jalr.jalr f0 r₁

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open jalr {b} {m = m} f0 r₁
      open f sk
        renaming (
          *r₂ to *r₁
        )

      sk' : typeOf sk
      sk' = Instruction.f jalr sk

      pc-r₁ : Skami.pc sk' ≡ *r₁
      pc-r₁ = ≡.refl

      rdun : (_≡_ on Rucyca'a.reg ∘ Skami.rucyca'a) sk sk'
      rdun = 0-dro-s f0 pc+nb _ _ ≡.refl (𝔽0.Veritas.d0 _ ▹ ≡.sym)

      mdun : (_≡_ on Skami.mem) sk' sk
      mdun = ≡.refl

      vdun : (_≡_ on Skami.vrici) sk' sk
      vdun = ≡.refl

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      rpcs : RPc-S 𝕃.[ f0 ] sk sk'
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd0 : RPc-Sd 𝕃.[] sk sk'
      rpcsd0 = {!!}
\end{code}

\begin{code}
    beq : {b r m : ℕ}
        → (Set Function.∋ {!!})
        → ∀ {a} → {A : Set a}
        → Instruction A b r m
    beq = {!!}
\end{code}

\begin{code}
    bne : {b r m : ℕ}
        → Set Function.∋ {!!}
        → ∀ {a} → {A : Set a}
        → Instruction A b r m
    bne = {!!}
\end{code}

\begin{code}
    bnez : {b r m : ℕ}
        → Set Function.∋ {!!}
         → ∀ {a} → {A : Set a}
         → Instruction A b r m
    bnez = {!!}
\end{code}

\begin{code}
  module add {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    opf : (_ _ : 𝔽 $ ℕ.suc b) → 𝔽 $ ℕ.suc b
    opf x z = (𝔽.toℕ x ℕ.+ 𝔽.toℕ z) mod _

    nibarda : ℕ
    nibarda = {!!}

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₁ opf)

    add : ∀ {a} → {A : Set a} → Instruction A b r m
    add = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : typeOf sk
      sk' = Instruction.f add sk

      dun⁻¹ : (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ r₁
            → let reg = Rucyca'a.reg ∘ Skami.rucyca'a in
              ((_≡_ on (λ x → 𝕍.lookup (reg x) r₄))
                sk'
                sk)
      dun⁻¹ r₄ N = begin
        𝕍.lookup (Rucyca'a.reg rc') r₄ ≡⟨ ≡.refl ⟩
        𝕍.lookup rx' r₄ ≡⟨ ≡.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N rx ⟩
        𝕍.lookup rx r₄ ∎
        where
        open ≡.≡-Reasoning

      dun : let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (let ri = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
             _≡_
              (𝔽.toℕ $ 𝕍.lookup (rx sk') r₁)
              ((_% ℕ.suc b)
                (ℕ._+_
                  (ri r₂)
                  (ri r₃))))
      dun N = begin
        𝔽.toℕ (𝕍.lookup rx' r₁)
          ≡⟨ N0-d-s _ _ _ _ ≡.refl N ▹ cong 𝔽.toℕ ⟩
        𝔽.toℕ (opf *r₂ *r₃)
          ≡⟨ ≡.refl ⟩
        𝔽.toℕ ((fℕ r₂ ℕ.+ fℕ r₃) mod ℕ.suc b)
          ≡⟨ toℕ-fromℕ< _ ⟩
        (fℕ r₂ ℕ.+ fℕ r₃) % ℕ.suc b ∎
        where
        *r₁ = 𝕍.lookup rx r₁
        fℕ = 𝔽.toℕ ∘ 𝕍.lookup rx
        open ≡.≡-Reasoning

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              let L = 𝔽.toℕ ∘_ $ 𝕍.lookup $ ra sk in
              let s = (L r₂ ℕ.+ L r₃) mod ℕ.suc b in
              RPc-Sd 𝕃.[ r₁ , s ] sk sk'
      rpcsd = Veritas-S.rpcsd! sk

      rpcsd0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd0 = Veritas-S.rpcsd0 sk

  add = add.add
\end{code}

\begin{code}
  module sub {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : ℕ → ℕ → ℕ
    opf x z = x ℕ.+_ $ ℕ.suc b ℕ.∸ z

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    sub : ∀ {a} → {A : Set a} → Instruction A b r m
    sub = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      sk' : Skami b r m A
      sk' = Instruction.f sub sk

      private
        ri : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        ri = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

      rpcsd0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd0 = {!!}

      sub⍨ : ((_≡_ on ri sk)
               r₂
               r₃)
           → 𝔽.zero ≡ ri sk r₁
      sub⍨ d with 𝔽.toℕ r₁ ≟ 0
      ... | yes d0 = {!!}
      ... | no N = ≡.sym $ begin
        ri sk r₁ ≡⟨ {!!} ⟩
        *r₁'! ≡⟨ ≡.refl ⟩
        (𝔽.toℕ *r₂ ℕ.+ (ℕ.suc b ℕ.∸ 𝔽.toℕ *r₃)) mod _ ≡⟨ ≡.refl ⟩
        _ ≡⟨ d ▹ ≡.sym ▹ cong (λ x → (𝔽.toℕ *r₂ ℕ.+_ $ ℕ.suc b ℕ.∸ 𝔽.toℕ x) mod _) ⟩
        (𝔽.toℕ *r₂ ℕ.+ (ℕ.suc b ℕ.∸ 𝔽.toℕ *r₂)) mod _ ≡⟨ {!!} ⟩
        (ℕ.suc b ℕ.+_ $ 𝔽.toℕ *r₂ ℕ.∸ 𝔽.toℕ *r₂) mod _ ≡⟨ ≡.refl ⟩
        _ ≡⟨ ℕP.n∸n≡0 (𝔽.toℕ *r₂) ▹ cong (λ x → (ℕ.suc b ℕ.+ x) mod _) ⟩
        (ℕ.suc b ℕ.+ 0) mod _ ≡⟨ ℕP.+-comm (ℕ.suc b) 0 ▹ cong (_mod _) ⟩
        ℕ.suc b mod _ ≡⟨ fromℕ<0 (ℕ.n%n≡0 b) (ℕ.m%n<n (ℕ.suc b) b) ⟩
        𝔽.zero ∎
        where
        open f sk
        open ≡.≡-Reasoning
        fromℕ<0 : {m n : ℕ}
                → m ≡ 0
                → (ml : m ℕ.< ℕ.suc n)
                → 𝔽.fromℕ< ml ≡ 𝔽.zero
        fromℕ<0 {0} ≡.refl _ = ≡.refl
        fromℕ<0 {ℕ.suc _} ()

      -- | .i co'e ja fegli la .varik.
      -- .i la .varik. na toldji lo nu vo'a zengau pe'a fi le ka frili fa lo nu jimpe fi ce'u
      +∘sub : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → (_≡_
                (ri sk r₂)
                ((_mod ℕ.suc b)
                  (ℕ._+_
                    (𝔽.toℕ $ ri sk' r₁)
                    (𝔽.toℕ $ ri sk r₃))))
      +∘sub N = ≡.sym $ begin
        gfx (ri sk' r₁) (ri sk r₃) ≡⟨ ≡.refl ⟩
        _ ≡⟨ (_▹_
               (RPc-Sd.dr' (rpcsd! N) 𝔽.zero ▹ ≡.sym)
               (cong $ (gfx ⍨) $ ri sk r₃)) ⟩
        gfx ((opf (ri' sk r₂) $ ri' sk r₃) mod _) (ri sk r₃) ≡⟨ {!!} ⟩
        (ri' sk r₂ ℕ.+ (ℕ.suc b ℕ.∸ ri' sk r₃) ℕ.+ ri' sk r₃) mod _ ≡⟨ ≡.refl ⟩
        _ ≡⟨ ℕP.+-assoc (ri' sk r₂) _ _ ▹ cong (_mod _) ⟩
        (ri' sk r₂ ℕ.+ ((ℕ.suc b ℕ.∸ ri' sk r₃) ℕ.+ ri' sk r₃)) mod _ ≡⟨ {!!} ⟩
        (ri' sk r₂ ℕ.+ ℕ.suc b) mod _ ≡⟨ ≡.refl ⟩
        𝔽.fromℕ< {(ri' sk r₂ ℕ.+ ℕ.suc b) % ℕ.suc b} _ ≡⟨ {!!} ⟩
        ((ri' sk r₂ % ℕ.suc b) ℕ.+ (ℕ.suc b % ℕ.suc b)) mod _ ≡⟨ ≡.refl ⟩
        _ ≡⟨ ℕ.n%n≡0 b ▹ cong (λ d → ((ri' sk r₂ % ℕ.suc b) ℕ.+ d) mod _) ⟩
        ((ri' sk r₂ % ℕ.suc b) ℕ.+ 0) mod _ ≡⟨ ≡.refl ⟩
        _ ≡⟨ ℕP.+-comm (ri' sk r₂ % ℕ.suc b) 0 ▹ cong (_mod _) ⟩
        (ri' sk r₂ % ℕ.suc b) mod _ ≡⟨ ≡.refl ⟩
        𝔽.fromℕ< {(ri' sk r₂ % ℕ.suc b) % ℕ.suc b} _ ≡⟨ ℕ.m≤n⇒m%n≡m {ri' sk r₂} {b} {!!} ▹ cong (λ n → 𝔽.fromℕ< {n % ℕ.suc b} $ ℕ.m%n<n n b) ⟩
        𝔽.fromℕ< {ri' sk r₂ % ℕ.suc b} _ ≡⟨ ≡.refl ⟩
        ri' sk r₂ mod _ ≡⟨ ≡.refl ⟩
        𝔽.toℕ (ri sk r₂) mod _ ≡⟨ ≡.refl ⟩
        𝔽.fromℕ< {𝔽.toℕ (ri sk r₂) % ℕ.suc b} _ ≡⟨ {!!} ⟩
        ri sk r₂ ∎
        where
        open ≡.≡-Reasoning
        gfx = λ x z → (𝔽.toℕ x ℕ.+ 𝔽.toℕ z) mod ℕ.suc b
        ri' = 𝔽.toℕ ∘₂ ri
        open Veritas-S sk
          using (
            rpcsd!
          )
\end{code}

\begin{code}
  module and {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    open op1x3 b r m {!!} r₁ r₂ r₃ {!!}

    and : ∀ {a} → {A : Set a} → Instruction A b r m
    and = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      private
        ri : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        ri = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      sk' : Skami b r m A
      sk' = Instruction.f and sk

      and0 : ri sk r₃ ≡ 𝔽.zero
           → ri sk' r₁ ≡ 𝔽.zero
      and0 = {!!}

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        and⍨ : ri sk r₂ ≡ ri sk r₃
             → ri sk' r₁ ≡ ri sk r₂
        and⍨ = {!!}

        and≤₁ : ri sk' r₁ 𝔽.≤ ri sk r₂
        and≤₁ = {!!}

        and≤₂ : ri sk' r₁ 𝔽.≤ ri sk r₃
        and≤₂ = {!!}

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

      rpcsd0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd0 = Veritas-S.rpcsd0 sk

  and = and.and
\end{code}

\begin{code}
  module or {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    open op1x3 b r m {!!} r₁ r₂ r₃ {!!}

    or : ∀ {a} → {A : Set a} → Instruction A b r m
    or = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      sk' : Skami b r m A
      sk' = Instruction.f or sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      private
        ri : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        ri = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        or0 : ri sk r₃ ≡ 𝔽.zero
            → ri sk' r₁ ≡ ri sk r₂
        or0 = {!!}

        or⍨ : ri sk r₂ ≡ ri sk r₃
            → ri sk' r₁ ≡ ri sk r₂
        or⍨ = {!!}

        or≥₁ : ri sk' r₁ 𝔽.≥ ri sk r₂
        or≥₁ = {!!}

        or≥₂ : ri sk' r₁ 𝔽.≥ ri sk r₃
        or≥₂ = {!!}

        rpcsd : RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
        rpcsd = {!!}

  or = or.or
\end{code}

\begin{code}
  module xor {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    opf : ℕ → ℕ → ℕ
    opf = {!!}

    open op1x3 b r m {!!} r₁ r₂ r₃ (inj₂ opf)

    xor : ∀ {a} → {A : Set a} → Instruction A b r m
    xor = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      module opf where
        xor∘xor : (m n : ℕ) → n ≡_ $ opf m $ opf m n
        xor∘xor = {!!}

        xor⍨ : (m : ℕ) → 0 ≡ opf m m
        xor⍨ = {!!}

        xor0 : (m : ℕ) → m ≡ opf m 0
        xor0 = {!!}

        xor-c : (m n : ℕ) → opf m n ≡ opf n m
        xor-c = {!!}

        xor-a : (m n o : ℕ)
              → (_≡_
                  (opf m $ opf n o)
                  (opf (opf m n) o))
        xor-a = {!!}

        xor-nth : (m n i : ℕ)
                → (_≡_
                    (bitn (opf m n) i)
                    (if (bitn m i ≡ᵇ bitn n i) (𝔽.# 0) $ 𝔽.# 1))
        xor-nth = {!!}

      sk' : Skami b r m A
      sk' = Instruction.f xor sk

      private
        ri : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        ri = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      xor0 : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → ri sk r₃ ≡ 𝔽.zero
           → ri sk' r₁ ≡ ri sk r₂
      xor0 = {!!}

      xor⍨ : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → ri sk r₂ ≡ ri sk r₃
           → ri sk' r₁ ≡ 𝔽.zero
      xor⍨ = {!!}

      xor-nth : ¬_ $ 𝔽.toℕ r₁ ≡ 0
              → (i : ℕ)
              → (_≡_
                  (bitn (𝔽.toℕ $ ri sk' r₁) i)
                  (if
                    (_≡ᵇ_
                      (_⍨ bitn i $ 𝔽.toℕ $ ri sk r₂)
                      (_⍨ bitn i $ 𝔽.toℕ $ ri sk r₃))
                    (𝔽.# 0)
                    (𝔽.# 1)))
      xor-nth N i = begin
        bitn (𝔽.toℕ $ ri sk' r₁) i ≡⟨ {!!} ⟩
        bitn (𝔽.toℕ $ opf (ri' sk r₂) (ri' sk r₃) mod ℕ.suc b) i ≡⟨ {!!} ⟩
        bitn (opf (ri' sk r₂) $ ri' sk r₃) i ≡⟨ {!!} ⟩
        if B (𝔽.# 0) (𝔽.# 1) ∎
        where
        ri' = 𝔽.toℕ ∘₂ ri
        Bf = _⍨ bitn i ∘ 𝔽.toℕ ∘ ri sk
        B = Bf r₂ ≡ᵇ Bf r₃
        open ≡.≡-Reasoning

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      rpcsd : RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

  xor = xor.xor
\end{code}

\begin{code}
  module sll {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : ℕ → ℕ → ℕ
    opf = λ *r₂ *r₃ → *r₂ ℕ.*_ $ 2 ℕ.^ *r₃

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    sll = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk f
      rpcs = Veritas-S.rpcs sk

  sll = sll.sll
\end{code}

\begin{code}
  module srl {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : ℕ → ℕ → ℕ
    opf imm *r₂ = (ℕ._div_
                    *r₂
                    (2 ℕ.^_ $ imm % ℕ.suc b)
                    {2^n≢0 $ imm % ℕ.suc b})

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    srl = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      sk' : Skami b r m A
      sk' = Instruction.f srl sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

  srl = srl.srl
\end{code}

\begin{code}
  private
    slli-nibarda : ℕ
    slli-nibarda = {!!}

  module slli {b r m : ℕ}
              (r₁ r₂ : 𝔽 r)
              (imm : 𝔽 $ i-size b r m slli-nibarda) where
    nibarda : ℕ
    nibarda = slli-nibarda

    opf : ℕ → ℕ → ℕ
    opf imm *r₂ = *r₂ ℕ.*_ $ 2 ℕ.^_ $ imm % ℕ.suc b

    open op1x1i b r m nibarda r₁ r₂ imm opf

    slli : ∀ {a} → {A : Set a} → Instruction A b r m
    slli = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      dun : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → 𝕍.lookup reg' r₁ ≡ *r₁'!
      dun = N0-d-s _ _ _ _ ≡.refl

      dunV : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (_≡_
              (𝔽.toℕ $ 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a f) r₁)
              (_%_
                (𝔽.toℕ *r₂ ℕ.* (2 ℕ.^ (𝔽.toℕ imm % ℕ.suc b)))
                (ℕ.suc b)))
      dunV N = ≡.trans (dun N ▹ cong 𝔽.toℕ) $ toℕ-fromℕ< _

      dun' : (r₄ : 𝔽 _)
           → ¬_ $ r₄ ≡ r₁
           → let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             𝕍.lookup (ra f) r₄ ≡ 𝕍.lookup (ra sk) r₄
      dun' = N0-d-s' r₁ *r₁'! reg reg' ≡.refl

      rpcs : RPc-S 𝕃.[ r₁ ] sk $ Instruction.f slli sk
      rpcs = {!!}

  slli = slli.slli
\end{code}

\begin{code}
  private
    srli-nibarda : ℕ
    srli-nibarda = {!!}

  module srli {b r m : ℕ}
              (r₁ r₂ : 𝔽 r)
              (imm : 𝔽 $ i-size b r m srli-nibarda) where
    nibarda : ℕ
    nibarda = srli-nibarda

    opf : ℕ → ℕ → ℕ
    opf imm *r₂ = (ℕ._div_
                    *r₂
                    (2 ℕ.^_ $ imm % ℕ.suc b)
                    {2^n≢0 $ imm % ℕ.suc b})

    open op1x1i b r m nibarda r₁ r₂ imm opf

    srli : ∀ {a} → {A : Set a} → Instruction A b r m
    srli = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      sk' : Skami b r m A
      sk' = Instruction.f srli sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      dun : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → 𝕍.lookup reg' r₁ ≡ *r₁'!
      dun = N0-d-s _ _ _ _ ≡.refl

      dunV : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (_≡_
              (𝔽.toℕ $ 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk') r₁)
              (_%_
                (ℕ._div_
                  (𝔽.toℕ *r₂)
                  (2 ℕ.^ (𝔽.toℕ imm % ℕ.suc b))
                  {_})
                (ℕ.suc b)))
      dunV N = ≡.trans (dun N ▹ cong 𝔽.toℕ) $ toℕ-fromℕ< _

      dun' : (r₄ : 𝔽 _)
           → ¬_ $ r₄ ≡ r₁
           → let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             𝕍.lookup (ra sk') r₄ ≡ 𝕍.lookup (ra sk) r₄
      dun' = N0-d-s' r₁ *r₁'! reg reg' ≡.refl

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ {j → λ N → dun' j $ N 𝔽.zero};
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , *r₁'! ] sk sk'
      rpcsd N = record {
        rpcs = rpcs;
        dr' = λ {𝔽.zero → dun N ▹ ≡.sym}
        }

  srli = srli.srli
\end{code}

\begin{code}
  module mv {b r mx : ℕ} (r₁ r₂ : 𝔽 r) where
    mv : ∀ {a} → {A : Set a} → Instruction A b r mx
    mv {A = A} = record {
      nibarda = Instruction.nibarda {A = A} ad;
      f = Instruction.f ad
      }
      where
      ad = add r₁ r₂ (𝔽0 r₁)

    module Veritas {a} {A : Set a} (sk : Skami b r mx A) where
      open add {b} {m = mx} r₁ r₂ (𝔽0 r₁)
      open op1x3 b r mx nibarda r₁ r₂ (𝔽0 r₁) (inj₁ opf)
      open f sk

      sk' : Skami b r mx A
      sk' = Instruction.f mv sk

      drpc : RPc-S 𝕃.[ r₁ ] sk sk'
      drpc = record {
        dr = λ j N → add.Veritas.dun⁻¹ r₁ r₂ (𝔽0 r₁) sk j $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }
\end{code}

\begin{code}
  module mul {b r mx : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    open op1x3 b r mx nibarda r₁ r₂ r₃ (inj₂ ℕ._*_)

    mul : ∀ {a} → {A : Set a} → Instruction A b r mx
    mul = op

    module Veritas {a} {A : Set a} (sk : Skami b r mx A) where
      open f sk

      dun⁻¹ : (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ r₁
            → (let rrc = Rucyca'a.reg ∘ Skami.rucyca'a in
               let r4i = λ x → 𝕍.lookup (rrc x) r₄ in
               (_≡_ on r4i)
                sk
                (sk ▹ Instruction.f mul))
      dun⁻¹ r₄ N = ≡.sym $ begin
        𝕍.lookup rx' r₄ ≡⟨ ≡.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N rx ⟩
        𝕍.lookup rx r₄ ∎
        where
        open ≡.≡-Reasoning

      dun : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f mul sk) r₁)
               ((l r₂ ℕ.* l r₃) mod ℕ.suc b))
      dun = N0-d-s _ _ _ _ ≡.refl
\end{code}

\begin{code}
  module div {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    div : ∀ {a} → {A : Set a} → Instruction A b r m
    div = {!!}

  div = div.div

  module divu {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    divu : ∀ {a} → {A : Set a} → Instruction A b r m
    divu = {!!}

  divu = divu.divu

  private
    addi-nibarda : ℕ
    addi-nibarda = {!!}

  module addi {b r mx : ℕ}
              (r₁ r₂ : 𝔽 r)
              (i : 𝔽 $ i-size b r mx addi-nibarda) where
    nibarda : ℕ
    nibarda = addi-nibarda

    open op1x1i b r mx nibarda r₁ r₂ i ℕ._+_

    addi : ∀ {a} → {A : Set a} → Instruction A b r mx
    addi = op

    module Veritas {a} {A : Set a} (sk : Skami b r mx A) where
      open f sk

      sk' : Skami b r mx A
      sk' = Instruction.f addi sk

      rgra : ∀ {a} → {A : Set a}
           → {b r m : ℕ}
           → Skami b r m A
           → Vec (𝔽 $ ℕ.suc b) r
      rgra = Rucyca'a.reg ∘ Skami.rucyca'a

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        r₁+ : (_≡_
                (𝔽.toℕ $ 𝕍.lookup (rgra sk') r₁)
                ((_% ℕ.suc b)
                  (𝔽.toℕ i ℕ.+_ $ 𝔽.toℕ $ 𝕍.lookup (rgra sk) r₂)))
        r₁+ = begin
          𝔽.toℕ (𝕍.lookup (rgra f) r₁) ≡⟨ ≡.refl ⟩
          _ ≡⟨ 𝕍P.lookup∘updateAt r₁ _ ▹ cong 𝔽.toℕ ⟩
          𝔽.toℕ *r₁' ≡⟨ ≡.refl ⟩
          𝔽.toℕ (if (𝔽.toℕ r₁ ≡ᵇ 0) *r₁ *r₁'!) ≡⟨ ≡.refl ⟩
          _ ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → 𝔽.toℕ $ if b *r₁ *r₁'!) ⟩
          𝔽.toℕ *r₁'! ≡⟨ toℕ-fromℕ< _ ⟩
          _ ∎
          where
          *r₁ = 𝕍.lookup reg r₁
          open ≡.≡-Reasoning

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      drpc : RPc-S 𝕃.[ r₁ ] sk sk'
      drpc = record {
        dr = λ j N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcd : ¬_ $ 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcd = {!!}
\end{code}

\begin{code}
  auipc-nibarda : ℕ
  auipc-nibarda = {!!}

  module auipc {b r mx : ℕ}
               (r₁ : 𝔽 r)
               (imm : 𝔽 $ i-size b r mx auipc-nibarda) where
    nibarda : ℕ
    nibarda = auipc-nibarda

    module f {a} {A : Set a} (sk : Skami b r mx A) where
      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      rc : Rucyca'a b r
      rc = Skami.rucyca'a sk

      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg rc

      *r₁ : 𝔽 $ ℕ.suc b
      *r₁ = 𝕍.lookup rx r₁

      pc+i : 𝔽 $ ℕ.suc b
      pc+i = (𝔽.toℕ (Skami.pc sk) ℕ.+ 𝔽.toℕ imm) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) pc+i

      rx' : Vec (𝔽 $ ℕ.suc b) r
      rx' = 𝕍.updateAt r₁ (λ _ → *r₁') rx

      rc' : Rucyca'a b r
      rc' = record rc {reg = rx'; x0 = x0}
        where
        x0 = x0-vrici r₁ pc+i rx rx' ≡.refl ˢ Rucyca'a.x0 rc

      f : Skami b r mx A
      f = record sk {rucyca'a = rc'; pc = pc+nb}

    auipc : ∀ {a} → {A : Set a} → Instruction A b r mx
    auipc = record {
      nibarda = nibarda;
      f = f.f
      }

    module Veritas {a} {A : Set a} (sk : Skami b r mx A) where
      open f sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : Skami b r mx A
      sk' = Instruction.f auipc sk

      lup : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             _≡_
              (𝔽.toℕ $ 𝕍.lookup (ra sk') r₁)
              ((_% ℕ.suc b)
                (𝔽.toℕ (Skami.pc sk) ℕ.+ 𝔽.toℕ imm)))
      lup N = ≡.trans *r₁'≡mod $ toℕ-fromℕ< _
        where
        *r₁'≡mod = N0-d-s r₁ pc+i rx rx' ≡.refl N ▹ cong 𝔽.toℕ

      lup' : (r₄ : 𝔽 r)
           → ¬_ $ r₄ ≡ r₁
           → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              _≡_
               (𝕍.lookup (ra sk') r₄)
               (𝕍.lookup (ra sk) r₄))
      lup' = N0-d-s' r₁ pc+i rx rx' ≡.refl

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ j N → lup' _ $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcd = {!!}

      rpcd0 : ¬_ $ 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcd0 = {!!}
\end{code}

\begin{code}
  module bext {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : ℕ → ℕ → ℕ
    opf r₂ r₃ = 𝔽.toℕ $ bitn r₂ $ r₃ % ℕ.suc b

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    bext : ∀ {a} → {A : Set a} → Instruction A b r m
    bext = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      sk' : typeOf sk
      sk' = Instruction.f bext sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      𝔽1⇒0 : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → ℕ.suc b ≡ 1
            → RPc-Sd 𝕃.[ r₁ , 𝔽0 (f.*r₂ sk) ] sk sk'
      𝔽1⇒0 = {!!}

      *r₁'≡0⊎1 : (zm : ℕ.suc b ℕ.≥ 2)
               → (let G = λ i → RPc-Sd 𝕃.[ r₁ , i ] sk sk' in
                  G 𝔽.zero ⊎ G (𝔽.fromℕ< {1} zm))
      *r₁'≡0⊎1 = {!!}

      *r₁'<2 : ((ℕ._< 2)
                  (𝔽.toℕ
                    (𝕍.lookup
                      (Rucyca'a.reg $ Skami.rucyca'a sk')
                      r₁)))
      *r₁'<2 with ℕ.suc b ℕ.≥? 2
      ... | no Nzm = {!!}
      ... | yes zm = _⊎_.[_,_]′ {!!} {!!} $ *r₁'≡0⊎1 zm
\end{code}

\begin{code}
  module bset {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    modulus : ℕ
    modulus = ℕ.suc {!!}

    smj : ℕ → ℕ → ℕ
    smj x z = x ℕ.+_ $ 2 ℕ.^ (z % modulus)

    opf : ℕ → ℕ → ℕ
    opf *r₂ *r₃ = if iz (smj *r₂ *r₃) *r₂
      where
      iz = bitn *r₂ *r₃ ≡ᵇ 𝔽.zero

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    bset : ∀ {a} → {A : Set a} → Instruction A b r m
    bset = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      sk' : Skami b r m A
      sk' = Instruction.f bset sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      N0-d : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              _≡_
               (𝕍.lookup (ra sk') r₁)
               ((_mod _)
                 (opf
                   (𝔽.toℕ $ 𝕍.lookup (ra sk) r₂)
                   (𝔽.toℕ $ 𝕍.lookup (ra sk) r₃))))
      N0-d = N0-d-s _ _ _ _ ≡.refl

      *r₁'≥*r₂ : (𝔽._≥_
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk') r₁)
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk) r₂))
      *r₁'≥*r₂ = {!!}

      private
        bit : 𝔽 2
        bit = bitn (𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃

      module _ where
        open ≡.≡-Reasoning

        private
          *r₂ℕ : ℕ
          *r₂ℕ = 𝔽.toℕ *r₂
          iz : Data.Bool.Bool
          iz = bitn *r₂ℕ (𝔽.toℕ *r₃) ≡ᵇ 𝔽.zero
          2^r₃ : ℕ
          2^r₃ = 2 ℕ.^_ $ 𝔽.toℕ *r₃ % modulus

          iF : _ → 𝔽 $ ℕ.suc b
          iF d = (_mod _) $ if d (smj *r₂ℕ $ 𝔽.toℕ *r₃) *r₂ℕ

        d0 : bit ≡ 𝔽.zero
           → (_≡_
               *r₁'!
               ((_mod ℕ.suc b)
                 (ℕ._+_
                   (𝔽.toℕ *r₂)
                   (2 ℕ.^_ $ 𝔽.toℕ *r₃ % modulus))))
        d0 d = begin
          *r₁'! ≡⟨ ≡.refl ⟩
          (opf *r₂ℕ $ 𝔽.toℕ *r₃) mod ℕ.suc b ≡⟨ ≡.refl ⟩
          iF iz ≡⟨ ≡⇒≡ᵇ d ▹ cong iF ⟩
          (smj *r₂ℕ $ 𝔽.toℕ *r₃) mod ℕ.suc b ≡⟨ ≡.refl ⟩
          (*r₂ℕ ℕ.+ 2^r₃) mod ℕ.suc b ∎

        d1 : bit ≡ 𝔽.suc 𝔽.zero → *r₁'! ≡ *r₂
        d1 N = begin
          *r₁'! ≡⟨ ≡.refl ⟩
          (opf *r₂ℕ $ 𝔽.toℕ *r₃) mod ℕ.suc b ≡⟨ ≡.refl ⟩
          iF iz ≡⟨ ¬≡⇒¬≡ᵇ (1⇒¬0 N) ▹ cong iF ⟩
          (𝔽.toℕ *r₂) mod ℕ.suc b ≡⟨ {!!} ⟩
          *r₂ ∎
          where
          1⇒¬0 : {f : 𝔽 2} → f ≡ 𝔽.suc 𝔽.zero → ¬_ $ f ≡ 𝔽.zero
          1⇒¬0 {𝔽.zero} ()
          1⇒¬0 {𝔽.suc _} _ ()

        d0' : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → bit ≡ 𝔽.zero
            → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
               let rai = 𝕍.lookup ∘ ra in
               _≡_
               (rai f r₁)
               ((_mod ℕ.suc b)
                 (ℕ._+_
                   (𝔽.toℕ $ rai sk r₂)
                   (2 ℕ.^_ $ 𝔽.toℕ (rai sk r₃) % modulus))))
        d0' N = ≡.trans (N0-d N) ∘ d0

        d1' : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → bit ≡ 𝔽.suc 𝔽.zero
            → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
               let rai = λ r i → 𝕍.lookup (ra r) i in
               rai sk' r₁ ≡ rai sk r₂)
        d1' N = ≡.trans (N0-d N) ∘ d1

      rpcsd-1 : ¬_ $ 𝔽.toℕ r₁ ≡ 0
              → bit ≡ 𝔽.suc 𝔽.zero
              → (let rxra = Rucyca'a.reg ∘ Skami.rucyca'a in
                 let *r₂ = 𝕍.lookup (rxra sk) r₂ in
                 RPc-Sd 𝕃.[ r₁ , *r₂ ] sk sk')
      rpcsd-1 N d = record {
        rpcs = rpcs;
        dr' = λ {𝔽.zero → d1' N d ▹ ≡.sym}
        }
\end{code}

\begin{code}
  module bclr {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    modulus : ℕ
    modulus = ℕ.suc {!!}

    smj : ℕ → ℕ → ℕ
    smj x z = x ℕ.+_ $ 2 ℕ.∸ (z % modulus)

    opf : ℕ → ℕ → ℕ
    opf *r₂ *r₃ = if bit≡0 *r₂ $ smj *r₂ *r₃
      where
      bit≡0 = bitn *r₂ *r₃ ≡ᵇ 𝔽.zero

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    bclr : ∀ {a} → {A : Set a} → Instruction A b r m
    bclr = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      private
        bit : 𝔽 2
        bit = bitn (𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃

      b32→32 : b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      d0 : bit ≡ 𝔽.zero → *r₁'! ≡ *r₂
      d0 = {!!}

      sk' : typeOf sk
      sk' = Instruction.f bclr sk

      ¬x0⇒*r₁'! : ¬_ $ 𝔽.toℕ r₁ ≡ 0
                 → ((_≡_ ⍨)
                     *r₁'!
                     (𝕍.lookup
                       (Rucyca'a.reg $ Skami.rucyca'a sk')
                       r₁))
      ¬x0⇒*r₁'! N = begin
        𝕍.lookup rx' r₁ ≡⟨ 𝕍P.lookup∘updateAt r₁ _ ⟩
        *r₁' ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → if b (𝕍.lookup rx r₁) *r₁'!) ⟩
        *r₁'! ∎
        where
        open ≡.≡-Reasoning

      *r₁'≤*r₂ : (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
                  𝔽._≤_
                   (𝕍.lookup (ra sk') r₁)
                   (𝕍.lookup (ra sk) r₂))
      *r₁'≤*r₂ with 𝔽.toℕ r₁ ≟ 0
      ... | yes d = ≡.subst (𝔽._≤ _) 0≡*r₁' $ ℕ.z≤n
        where
        0≡*r₁' = ≡.trans dl $ ≡.sym $ 𝕍P.lookup∘updateAt r₁ _
          where
          dl :  𝔽.zero ≡ 𝕍.lookup rx r₁
          dl = ≡.subst (λ i → 𝔽.zero ≡ 𝕍.lookup rx i) D x0'
            where
            𝔽>0 : {n : ℕ} → 𝔽 n → 0 ℕ.< n
            𝔽>0 {0} ()
            𝔽>0 {ℕ.suc n} _ = ℕ.s≤s ℕ.z≤n
            x0' = Rucyca'a.x0 (Skami.rucyca'a sk) $ 𝔽>0 r₁
            D = begin
              𝔽.fromℕ< (𝔽>0 r₁) ≡⟨ {!!} ⟩
              𝔽0 r₁ ≡⟨ 𝔽0-0 d ⟩
              r₁ ∎
              where
              𝔽0-0 : {n : ℕ}
                   → {f : 𝔽 n}
                   → 𝔽.toℕ f ≡ 0
                   → 𝔽0 f ≡ f
              𝔽0-0 {ℕ.suc _} {𝔽.zero} _ = ≡.refl
              𝔽0-0 {ℕ.suc (ℕ.suc _)} {𝔽.suc _} = λ ()
              open ≡.≡-Reasoning
      ... | no N with bit ≟ 𝔽.zero
      ... | yes d = ℕP.≤-reflexive {!!}
      ... | no Nb = {!!}

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd' : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd' = Veritas-S.rpcsd0 sk

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        private
          *r₂- : 𝔽 $ ℕ.suc b
          *r₂- = {!!}

        rpcsd : RPc-Sd 𝕃.[ r₁ , *r₁'! ] sk sk'
        rpcsd = Veritas-S.rpcsd! sk N

        rpcsd0 : bit ≡ 𝔽.zero
               → RPc-Sd 𝕃.[ r₁ , *r₂ ] sk sk'
        rpcsd0 d0 = record {
          rpcs = rpcs;
          dr' = {!!}
          }

        rpcsd1 : bit ≡ 𝔽.suc 𝔽.zero
               → RPc-Sd 𝕃.[ r₁ , *r₂- ] sk sk'
        rpcsd1 d0 = record {
          rpcs = rpcs;
          dr' = {!!}
          }

        rpcsd-⊎ : let D = λ x → RPc-Sd 𝕃.[ r₁ , x ] sk sk' in
                  D *r₂ ⊎ D *r₂-
        rpcsd-⊎ with bit | ≡.inspect (bitn $ 𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃
        ... | 𝔽.zero | ≡.[ d ] = inj₁ $ rpcsd0 d
        ... | 𝔽.suc 𝔽.zero | ≡.[ d ] = inj₂ $ rpcsd1 d

  bclr = bclr.bclr
\end{code}

\begin{code}
  module maxu {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    open op1x3 b r m {!!} r₁ r₂ r₃ (inj₂ ℕ._⊔_)

    maxu : ∀ {a} → {A : Set a} → Instruction A b r m
    maxu = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      sk' : typeOf sk
      sk' = Instruction.f maxu sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ j N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → let F = 𝕍.lookup $ Rucyca'a.reg $ Skami.rucyca'a sk in
              let _≥ᵇ_ = λ x z → (ℕ._≤ᵇ_ ⍨) (𝔽.toℕ x) $ 𝔽.toℕ z in
              RPc-Sd 𝕃.[ r₁ , if (F r₂ ≥ᵇ F r₃) (F r₂) (F r₃) ] sk sk'
      rpcsd = λ N → record {
        rpcs = rpcs;
        dr' = {!!}
        }

  maxu = maxu.maxu
\end{code}

\begin{code}
  module max {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    open op1x3 b r m nibarda r₁ r₂ r₃ {!!}

    max : ∀ {a} → {A : Set a} → Instruction A b r m
    max = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : typeOf sk
      sk' = Instruction.f max sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = {!!}

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

      rpcsd-⊎ : ¬_ $ 𝔽.toℕ r₁ ≡ 0
              → let L = 𝕍.lookup ∘ Rucyca'a.reg ∘ Skami.rucyca'a in
                let D = λ i → RPc-Sd 𝕃.[ r₁ , L sk i ] sk sk' in
                D r₂ ⊎ D r₃
      rpcsd-⊎ = {!!}

  max = max.max
\end{code}

\begin{code}
  module minu {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    open op1x3 b r m {!!} r₁ r₂ r₃ (inj₂ ℕ._⊓_)

    minu : ∀ {a} → {A : Set a} → Instruction A b r m
    minu = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      private
        L : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        L = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      sk' : typeOf sk
      sk' = Instruction.f minu sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      rpcsd-0 : 𝔽.toℕ r₁ ≡ 0 → RPc-Sd 𝕃.[] sk sk'
      rpcsd-0 = Veritas-S.rpcsd0 sk

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        rpcsd-≤ : L sk r₂ 𝔽.≤ L sk r₃
                → RPc-Sd 𝕃.[ r₁ , L sk r₂ ] sk sk'
        rpcsd-≤ ml = record {
          rpcs = rpcs;
          dr' = λ {𝔽.zero → ≡.sym $ begin
            𝕍.lookup rx' r₁ ≡⟨ ≡.refl ⟩
            _ ≡⟨ RPc-Sd.dr' (Veritas-S.rpcsd! sk N) 𝔽.zero ▹ ≡.sym ⟩
            (L' sk r₂ ℕ.⊓ L' sk r₃) mod _ ≡⟨ ≡.refl ⟩
            _ ≡⟨ ℕP.m≤n⇒m⊓n≡m ml ▹ cong (_mod _) ⟩
            L' sk r₂ mod _ ≡⟨ ≡.sym mod∘toℕ ⟩
            L sk r₂ ∎}
          }
          where
          L' = 𝔽.toℕ ∘₂ L
          open ≡.≡-Reasoning
          open f sk

        rpcsd-≥ : L sk r₂ 𝔽.≥ L sk r₃
                → RPc-Sd 𝕃.[ r₁ , L sk r₃ ] sk sk'
        rpcsd-≥ zm = record {
          rpcs = rpcs;
          dr' = λ {𝔽.zero → ≡.sym $ begin
            𝕍.lookup rx' r₁ ≡⟨ ≡.refl ⟩
            _ ≡⟨ RPc-Sd.dr' (Veritas-S.rpcsd! sk N) 𝔽.zero ▹ ≡.sym ⟩
            (L' sk r₂ ℕ.⊓ L' sk r₃) mod _ ≡⟨ ≡.refl ⟩
            _ ≡⟨ ℕP.m≥n⇒m⊓n≡n zm ▹ cong (_mod _) ⟩
            L' sk r₃ mod _ ≡⟨ ≡.sym mod∘toℕ ⟩
            L sk r₃ ∎}
          }
          where
          L' = 𝔽.toℕ ∘₂ L
          open ≡.≡-Reasoning
          open f sk

        rpcsd-⊎ : let D = λ i → RPc-Sd 𝕃.[ r₁ , L sk i ] sk sk' in
                  D r₂ ⊎ D r₃
        rpcsd-⊎ with 𝔽.toℕ (L sk r₂) ℕ.≤? 𝔽.toℕ (L sk r₃)
        ... | yes djm = inj₁ $ rpcsd-≤ djm
        ... | no N = inj₂ $ rpcsd-≥ $ ℕP.≰⇒≥ N

  minu = minu.minu
\end{code}

\begin{code}
  module min {b r m : ℕ} (r₁ r₂ r₃ : 𝔽 r) where
    minx : ℕ → ℕ → ℕ
    minx x z = if (ℕ→ℤ x ℤ.≤ᵇ ℕ→ℤ z) x z

    nibarda : ℕ
    nibarda = {!!}

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ minx)

    min : ∀ {a} → {A : Set a} → Instruction A b r m
    min = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      private
        L : Skami b r m A → 𝔽 r → 𝔽 $ ℕ.suc b
        L = 𝕍.lookup ∘_ $ Rucyca'a.reg ∘ Skami.rucyca'a

      sk' : typeOf sk
      sk' = Instruction.f min sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = Veritas-S.rpcs sk

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        rpcsd-≤ : (ℤ._≤_ on_ $ ℕ→ℤ ∘ 𝔽.toℕ ∘ L sk) r₂ r₃
                → RPc-Sd 𝕃.[ r₁ , L sk r₂ ] sk sk'
        rpcsd-≤ = {!!}

        rpcsd-≥ : ((ℤ._≤_ ⍨) on_ $ ℕ→ℤ ∘ 𝔽.toℕ ∘ L sk) r₂ r₃
                → RPc-Sd 𝕃.[ r₁ , L sk r₃ ] sk sk'
        rpcsd-≥ = {!!}

        rpcsd-⊎ : let D = λ i → RPc-Sd 𝕃.[ r₁ , L sk i ] sk sk' in
                  D r₂ ⊎ D r₃
        rpcsd-⊎ with f (L sk r₂) ℤ.≤? f (L sk r₃)
          where
          f = ℕ→ℤ ∘ 𝔽.toℕ
        ... | yes mld = inj₁ $ rpcsd-≤ mld
        ... | no N = inj₂ $ rpcsd-≥ {!!}
  min = min.min
\end{code}

\begin{code}
  module lb {b r m : ℕ} (r₁ r₂ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    lb : ∀ {a} → {A : Set a} → Instruction A b r m
    lb = {!!}

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : Skami b r m A
      sk' = Instruction.f lb sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = {!!}

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

  lb = lb.lb
\end{code}

\begin{code}
  module lh {b r m : ℕ} (r₁ r₂ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    lh : ∀ {a} → {A : Set a} → Instruction A b r m
    lh = {!!}

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : Skami b r m A
      sk' = Instruction.f lh sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = {!!}

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

  lh = lh.lh
\end{code}

\begin{code}
  module lw {b r m : ℕ} (r₁ r₂ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    lw : ∀ {a} → {A : Set a} → Instruction A b r m
    lw = {!!}

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      sk' : Skami b r m A
      sk' = Instruction.f lw sk

      rpcs : RPc-S 𝕃.[ r₁ ] sk sk'
      rpcs = {!!}

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd = {!!}

  lw = lw.lw
\end{code}

\begin{code}
  module sb {b r m : ℕ} (r₁ r₂ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    sb : ∀ {a} → {A : Set a} → Instruction A b r m
    sb = {!!}

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      Dr : ((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
             sk
             (Instruction.f sb sk))
      Dr = {!!}

      Dm : (_≡_
             (Skami.mem $ Instruction.f sb sk)
             {!!})
      Dm = {!!}

      vmpcs : VMPc-S {!!} sk $ Instruction.f sb sk
      vmpcs = {!!}

  sb = sb.sb
\end{code}

\begin{code}
  private
    sh-nibarda : ℕ
    sh-nibarda = {!!}

  module sh {a} {A : Set a}
            {b r m : ℕ}
            (r₁ r₂ : 𝔽 r)
            (imm : 𝔽 $ i-size b r m sh-nibarda) where
    nibarda : ℕ
    nibarda = sh-nibarda

    open op1x1i+ A b r m sh-nibarda r₁ r₂ imm {!!}

    sh : Instruction A b r m
    sh = op

    module Veritas (sk : Skami b r m A) where
      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      Dr : ((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
             sk
             (Instruction.f sh sk))
      Dr = {!!}

      Dm : (_≡_
             (Skami.mem $ Instruction.f sh sk)
             {!!})
      Dm = {!!}

      vmpcs : VMPc-S {!!} sk $ Instruction.f sh sk
      vmpcs = {!!}

  sh = sh.sh
\end{code}

\begin{code}
  private
    sw-nibarda : ℕ
    sw-nibarda = {!!}

  module sw {a} {A : Set a}
            {b r m : ℕ}
            (r₁ r₂ : 𝔽 r)
            (imm : 𝔽 $ i-size b r m sw-nibarda) where
    nibarda : ℕ
    nibarda = sw-nibarda

    open op1x1i+ A b r m sw-nibarda r₁ r₂ imm {!!}

    sw : Instruction A b r m
    sw = op

    module Veritas (sk : Skami b r m A) where
      private
        sk' : Skami b r m A
        sk' = Instruction.f sw sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      Dr : ((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
             sk
             sk')
      Dr = {!!}

      Dm : (_≡_
             (Skami.mem sk')
             {!!})
      Dm = {!!}

      vmpcs : VMPc-S {!!} sk sk'
      vmpcs = {!!}

  sw = sw.sw
\end{code}

\section{le ctaipe be le su'u mapti la'o zoi.\ \AgdaRecord{Skami-S}\ .zoi.}

\begin{code}
rv : ∀ {a} → (A : Set a)
   → (b r m : ℕ)
   → Skami-S (Skami b r m A) $ Instruction A b r m
rv _ _ _ _ = record {f = Instruction.f}
\end{code}
\end{document}
