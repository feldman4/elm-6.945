module WFC.Types exposing (..)

import Array exposing (Array)
import Dict exposing (Dict)


type alias Wave =
    Array Point


type alias Wave2 =
    { support : Support, wave : Wave, edges : Edges, n : Int, m : Int }


type alias Support =
    Dict ( Edge, IndexS ) Int


type alias Point2 =
    List Int


type alias PointMod =
    ( IndexW, Point2 )


type alias Point =
    Array Bool


type alias Compatibility =
    IndexS -> IndexS -> Edge -> Bool


{-| type variable should be `comparable`
-}
type alias Selector a =
    Point -> Maybe a


type alias Collapser =
    Point -> Maybe Point


type alias Propagator =
    Wave -> IndexW -> ( Wave, List IndexW )


type alias Propagator2 =
    Wave2 -> PointMod -> ( Wave2, List PointMod )


type alias IndexS =
    Int


type alias IndexW =
    Int


type alias Edge =
    ( IndexW, IndexW )


type alias Edges =
    Dict IndexW (List IndexW)


type alias Offset =
    ( DeltaI, DeltaJ )


type alias DeltaI =
    Int


type alias DeltaJ =
    Int


type alias Entropy =
    Float


type alias Color =
    Int


type alias T3 a =
    ( a, a, a )


{-| could parameterize 3x3 tiles, or not
-}
type alias State =
    T3 (T3 Color)
