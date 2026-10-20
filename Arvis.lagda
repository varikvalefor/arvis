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
\newunicodechar{′}{\ensuremath{\mathnormal{'}}}
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

module Arvis where
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

≡⇒≡ᵇ : ∀ {a} → {A : Set a}
     → ⦃ _ : Eq A ⦄
     → {x z : A}
     → x ≡ z
     → x ≡ᵇ z ≡ Data.Bool.true
≡⇒≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-true (x ≟ z)

¬≡⇒¬≡ᵇ : ∀ {a} → {A : Set a}
       → ⦃ _ : Eq A ⦄
       → {x z : A}
       → ¬_ $ x ≡ z
       → x ≡ᵇ z ≡ Data.Bool.false
¬≡⇒¬≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-false (x ≟ z)

2^n≢0 : (n : ℕ) → False $ (2 ℕ.^ n) ≟ 0
2^n≢0 n with (2 ℕ.^ n) ≟ 0
... | no N = tt
... | yes d = (λ ()) $ m^n≡0⇒m≡0 2 n d

bitn : ℕ → ℕ → 𝔽 2
bitn n b = (_mod 2) $ ℕ._div_ n (2 ℕ.^ b) {2^n≢0 b}

module log (b n : ℕ) where
  f : ℕ
  f = {!!}

  module Veritas where
    ml : n ℕ.≤_ $ b ℕ.^_ $ f ℕ.+ 1
    ml = {!!}

    zm : n ℕ.≥_ $ b ℕ.^ f
    zm = {!!}
\end{code}

\section{le rucyca'a se ctaipe}

\begin{code}
record Rucyca'a (b r : ℕ) : Set where
  field
    reg : Vec (𝔽 $ ℕ.suc b) r
    x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup reg $ 𝔽.fromℕ< ml)
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

\begin{code}
module Instructions where
  i-size : (b r m nibarda : ℕ) → ℕ
  i-size = {!!}

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
           → let 0d = λ R → 0 ≡_ $ 𝔽.toℕ $ 𝕍.lookup R $ 𝔽.fromℕ< ml in
             0d rc
           → 0d rc'
  x0-vrici {b = b} r₁ n rx rx' d ml d0 = ≡.trans d0 $ ≡.sym rxdun
    where
    *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) n
    rxdun = cong 𝔽.toℕ $ begin
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

  record RPc-S {a} (A : Set a)
                  (b r m : ℕ)
                  (is : List $ 𝔽 r)
                  (x z : Skami b r m A) : Set a where
    private
      ra : Skami b r m A → Vec (𝔽 $ ℕ.suc b) r
      ra = Rucyca'a.reg ∘ Skami.rucyca'a

      D : ∀ {c} → {C : Set c} → (Skami b r m A → C) → Set c
      D f = f z ≡ f x

    field
      dr : (j : 𝔽 r)
         → ((i : 𝔽 _) → ¬_ $ j ≡ 𝕃.lookup is i)
         → D $ λ x → 𝕍.lookup (ra x) j
      dv : D Skami.vrici
      dm : D Skami.mem

  record RPc-Sd {a} (A : Set a)
                (b r m : ℕ)
                (is : List $ 𝔽 r × 𝔽 (ℕ.suc b))
                (x z : Skami b r m A) : Set a where
    private
      ra : Skami b r m A → Vec (𝔽 $ ℕ.suc b) r
      ra = Rucyca'a.reg ∘ Skami.rucyca'a

    field
      rpcs : RPc-S A b r m (𝕃.map Σ.proj₁ is) x z
      dr' : (i : 𝔽 _)
          → (_≡_
              (Σ.proj₂ $ 𝕃.lookup is i)
              (𝕍.lookup
                (ra z)
                (Σ.proj₁ $ 𝕃.lookup is i)))

  module op1x3 (b r m nibarda : ℕ)
               (r₁ r₂ r₃ : 𝔽 r)
               (opf : (_⊎_
                        ((_ _ : 𝔽 $ ℕ.suc b) → 𝔽 $ ℕ.suc b)
                        (ℕ → ℕ → ℕ))) where
    module f {a} {A : Set a}
             (sk : Skami b r m A) where

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

      x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup rx' $ 𝔽.fromℕ< ml)
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

    op : ∀ {a} → (A : Set a) → Instruction A b r mx
    op A = record {
      nibarda = nibarda;
      f = f.f
      }

  module jalr (b r m : ℕ) (r₁ r₂ : 𝔽 r) where
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

      x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup rx' $ 𝔽.fromℕ< ml)
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

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ j N → drx j (N 𝔽.zero) ▹ ≡.sym;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module jr (b r m : ℕ) (r₁ : 𝔽 r) where

    f0 : 𝔽 r
    f0 = 𝔽0 r₁

    jr : ∀ {a} → {A : Set a} → Instruction A b r m
    jr = jalr.jalr b r m f0 r₁

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open jalr b r m f0 r₁
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

      rpcs : RPc-S A b r m 𝕃.[ 𝔽0 r₁ ] sk sk'
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module add (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
    opf : (_ _ : 𝔽 $ ℕ.suc b) → 𝔽 $ ℕ.suc b
    opf x z = (𝔽.toℕ x ℕ.+ 𝔽.toℕ z) mod _

    nibarda : ℕ
    nibarda = {!!}

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₁ opf)

    add : ∀ {a} → {A : Set a} → Instruction A b r m
    add = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

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

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

  add = add.add

  module sub (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : (_ _ : 𝔽 $ ℕ.suc b) → 𝔽 $ ℕ.suc b
    opf = {!!}

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₁ opf)

    sub : ∀ {a} → {A : Set a} → Instruction A b r m
    sub = op

  module sll (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    opf : ℕ → ℕ → ℕ
    opf = λ *r₂ *r₃ → *r₂ ℕ.*_ $ 2 ℕ.^ *r₃

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    sll = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

  sll = sll.sll

  module srl (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
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

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

  srl = srl.srl

  private
    slli-nibarda : ℕ
    slli-nibarda = {!!}

  module slli (b r m : ℕ) (r₁ r₂ : 𝔽 r) (imm : 𝔽 $ i-size b r m slli-nibarda) where
    nibarda : ℕ
    nibarda = slli-nibarda

    opf : ℕ → ℕ → ℕ
    opf imm *r₂ = *r₂ ℕ.*_ $ 2 ℕ.^_ $ imm % ℕ.suc b

    open op1x1i b r m nibarda r₁ r₂ imm opf

    slli : ∀ {a} → (A : Set a) → Instruction A b r m
    slli = op

    module Veritas {a} {A : Set a}
                   (sk : Skami b r m A) where
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

  slli = slli.slli

  private
    srli-nibarda : ℕ
    srli-nibarda = {!!}

  module srli (b r m : ℕ) (r₁ r₂ : 𝔽 r) (imm : 𝔽 $ i-size b r m srli-nibarda) where
    nibarda : ℕ
    nibarda = srli-nibarda

    opf : ℕ → ℕ → ℕ
    opf imm *r₂ = (ℕ._div_
                    *r₂
                    (2 ℕ.^_ $ imm % ℕ.suc b)
                    {2^n≢0 $ imm % ℕ.suc b})

    open op1x1i b r m nibarda r₁ r₂ imm opf

    srli : ∀ {a} → (A : Set a) → Instruction A b r m
    srli = op

    module Veritas {a} {A : Set a}
                   (sk : Skami b r m A) where
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
                (ℕ._div_
                  (𝔽.toℕ *r₂)
                  (2 ℕ.^ (𝔽.toℕ imm % ℕ.suc b))
                  {_})
                (ℕ.suc b)))
      dunV N = ≡.trans (dun N ▹ cong 𝔽.toℕ) $ toℕ-fromℕ< _

      dun' : (r₄ : 𝔽 _)
           → ¬_ $ r₄ ≡ r₁
           → let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             𝕍.lookup (ra f) r₄ ≡ 𝕍.lookup (ra sk) r₄
      dun' = N0-d-s' r₁ *r₁'! reg reg' ≡.refl

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ {j → λ N → dun' j $ N 𝔽.zero};
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd : ¬_ $ 𝔽.toℕ r₁ ≡ 0
            → RPc-Sd A b r m 𝕃.[ r₁ , *r₁'! ] sk f
      rpcsd N = record {
        rpcs = rpcs;
        dr' = λ {𝔽.zero → dun N ▹ ≡.sym}
        }

  srli = srli.srli

  module mv (b r mx : ℕ) (r₁ r₂ : 𝔽 r) where
    mv : ∀ {a} → {A : Set a} → Instruction A b r mx
    mv {A = A} = record {
      nibarda = Instruction.nibarda {A = A} ad;
      f = Instruction.f ad
      }
      where
      ad = add b r mx r₁ r₂ (𝔽0 r₁)

    module Veritas {a} {A : Set a}
                   (sk : Skami b r mx A) where
      open add b r mx r₁ r₂ (𝔽0 r₁)
      open op1x3 b r mx nibarda r₁ r₂ (𝔽0 r₁) (inj₁ opf)
      open f sk

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → add.Veritas.dun⁻¹ b r mx r₁ r₂ (𝔽0 r₁) sk j $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module mul (b r mx : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
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

  private
    addi-nibarda : ℕ
    addi-nibarda = {!!}

  module addi (b r mx : ℕ) (r₁ r₂ : 𝔽 r) (i : 𝔽 $ i-size b r mx addi-nibarda) where
    nibarda : ℕ
    nibarda = addi-nibarda

    open op1x1i b r mx nibarda r₁ r₂ i ℕ._+_

    addi : ∀ {a} → (A : Set a) → Instruction A b r mx
    addi = op

    module Veritas {a} {A : Set a}
                   (sk : Skami b r mx A) where

      open f sk

      rgra : ∀ {a} → {A : Set a}
           → {b r m : ℕ}
           → Skami b r m A
           → Vec (𝔽 $ ℕ.suc b) r
      rgra = Rucyca'a.reg ∘ Skami.rucyca'a

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        r₁+ : (_≡_
                (𝔽.toℕ $ 𝕍.lookup (rgra f) r₁)
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

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module auipc (b r mx : ℕ) (r₁ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

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

    auipc : ∀ {a} → (A : Set a) → Instruction A b r mx
    auipc A = record {
      nibarda = nibarda;
      f = f.f
      }

    module Veritas {a} {A : Set a} (m : ⊤) (sk : Skami b r mx A) where
      open f sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      lup : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             _≡_
              (𝔽.toℕ $ 𝕍.lookup (ra $ f.f sk) r₁)
              ((_% ℕ.suc b)
                (𝔽.toℕ (Skami.pc sk) ℕ.+ 𝔽.toℕ imm)))
      lup N = ≡.trans *r₁'≡mod $ toℕ-fromℕ< _
        where
        *r₁'≡mod = N0-d-s r₁ pc+i rx rx' ≡.refl N ▹ cong 𝔽.toℕ

      lup' : (r₄ : 𝔽 r)
           → ¬_ $ r₄ ≡ r₁
           → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              _≡_
               (𝕍.lookup (ra $ f.f sk) r₄)
               (𝕍.lookup (ra sk) r₄))
      lup' = N0-d-s' r₁ pc+i rx rx' ≡.refl

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → lup' _ $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module bext (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
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

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = {!!};
        dv = ≡.refl;
        dm = {!!}
        }

      𝔽1⇒0 : ℕ.suc b ≡ 1
            → RPc-Sd A b r m 𝕃.[ r₁ , 𝔽0 (f.*r₂ sk) ] sk sk'
      𝔽1⇒0 = {!!}

      *r₁'≡0⊎1 : (zm : ℕ.suc b ℕ.≥ 2)
               → (let G = λ i → RPc-Sd A b r m 𝕃.[ r₁ , i ] sk sk' in
                  G 𝔽.zero ⊎ G (𝔽.fromℕ< {1} zm))
      *r₁'≡0⊎1 = {!!}

      *r₁'<2 : ((ℕ._< 2)
                  (𝔽.toℕ
                    (𝕍.lookup
                      (Rucyca'a.reg $ Skami.rucyca'a sk')
                      r₁)))
      *r₁'<2 = {!!}

  module bset (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
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

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk f
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      N0-d : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              _≡_
               (𝕍.lookup (ra f) r₁)
               ((_mod _)
                 (opf
                   (𝔽.toℕ $ 𝕍.lookup (ra sk) r₂)
                   (𝔽.toℕ $ 𝕍.lookup (ra sk) r₃))))
      N0-d = N0-d-s _ _ _ _ ≡.refl

      *r₁'≥*r₂ : (𝔽._≥_
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a f) r₁)
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk) r₂))
      *r₁'≥*r₂ = {!!}

      private
        bit : 𝔽 2
        bit = bitn (𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃

      module _ where
        open ≡.≡-Reasoning

        private
          *r₂ℕ = 𝔽.toℕ *r₂
          iz = bitn *r₂ℕ (𝔽.toℕ *r₃) ≡ᵇ 𝔽.zero
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
               rai f r₁ ≡ rai sk r₂)
        d1' N = ≡.trans (N0-d N) ∘ d1

        rpcsd-1 : ¬_ $ 𝔽.toℕ r₁ ≡ 0
                → bit ≡ 𝔽.suc 𝔽.zero
                → (let *r₂ = 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk) r₂ in
                   RPc-Sd A b r m 𝕃.[ r₁ , *r₂ ] sk f)
        rpcsd-1 N d = record {
          rpcs = rpcs;
          dr' = λ {𝔽.zero → d1' N d ▹ ≡.sym}
          }

  module bclr (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    modulus : ℕ
    modulus = ℕ.suc {!!}

    smj : ℕ → ℕ → ℕ
    smj x z = x ℕ.+_ $ 2 ℕ.∸ (z % modulus)

    opf : ℕ → ℕ → ℕ
    opf *r₂ *r₃ = if iz *r₂ $ smj *r₂ *r₃
      where
      iz = bitn *r₂ *r₃ ≡ᵇ 𝔽.zero

    open op1x3 b r m nibarda r₁ r₂ r₃ (inj₂ opf)

    bclr : ∀ {a} → {A : Set a} → Instruction A b r m
    bclr = op

    module Veritas {a} {A : Set a} (sk : Skami b r m A) where
      open f sk

      private
        bit : 𝔽 2
        bit = bitn (𝔽.toℕ *r₂) $ 𝔽.toℕ *r₃

      d0 : bit ≡ 𝔽.zero → *r₁'! ≡ *r₂
      d0 = {!!}

      sk' : typeOf sk
      sk' = Instruction.f bclr sk

      *r₁'≤*r₂ : (𝔽._≤_
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk') r₁)
                   (𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a sk) r₂))
      *r₁'≤*r₂ = {!!}

      rpcs : RPc-S A b r m 𝕃.[ r₁ ] sk sk'
      rpcs = record {
        dr = λ _ N → 𝕍P.lookup∘updateAt′ _ _ (N 𝔽.zero) _;
        dv = ≡.refl;
        dm = ≡.refl
        }

      rpcsd0 : bit ≡ 𝔽.zero
             → RPc-Sd A b r m 𝕃.[ r₁ , *r₂ ] sk sk'
      rpcsd0 d0 = record {
        rpcs = rpcs;
        dr' = {!!}
        }

      rpcsd1 : ¬_ $ 𝔽.toℕ r₁ ≡ 0
             → bit ≡ 𝔽.suc 𝔽.zero
             → RPc-Sd A b r m 𝕃.[ r₁ , {!!} ] sk sk'
      rpcsd1 N d0 = record {
        rpcs = rpcs;
        dr' = {!!}
        }

  bclr = bclr.bclr
\end{code}
\end{document}
