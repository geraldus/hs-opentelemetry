{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-missing-export-lists #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- | Generated by Haskell protocol buffer compiler. DO NOT EDIT!
module OpenTelemetry.Proto.Resource.V1.Resource where
import qualified Prelude as Hs
import qualified Proto3.Suite.Class as HsProtobuf
import qualified Proto3.Suite.DotProto as HsProtobufAST
import qualified Proto3.Suite.JSONPB as HsJSONPB
import Proto3.Suite.JSONPB ((.=), (.:))
import qualified Proto3.Suite.Types as HsProtobuf
import qualified Proto3.Wire as HsProtobuf
import qualified Proto3.Wire.Decode as HsProtobuf
       (Parser, RawField)
import qualified Control.Applicative as Hs
import Control.Applicative ((<*>), (<|>), (<$>))
import qualified Control.DeepSeq as Hs
import qualified Control.Monad as Hs
import qualified Data.ByteString as Hs
import qualified Data.Coerce as Hs
import qualified Data.Int as Hs (Int16, Int32, Int64)
import qualified Data.List.NonEmpty as Hs (NonEmpty(..))
import qualified Data.Map as Hs (Map, mapKeysMonotonic)
import qualified Data.Proxy as Proxy
import qualified Data.String as Hs (fromString)
import qualified Data.Text.Lazy as Hs (Text)
import qualified Data.Vector as Hs (Vector)
import qualified Data.Word as Hs (Word16, Word32, Word64)
import qualified GHC.Enum as Hs
import qualified GHC.Generics as Hs
import qualified Google.Protobuf.Wrappers.Polymorphic as HsProtobuf
       (Wrapped(..))
import qualified Unsafe.Coerce as Hs
import qualified OpenTelemetry.Proto.Common.V1.Common

data Resource = Resource{resourceAttributes ::
                         Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue,
                         resourceDroppedAttributesCount :: Hs.Word32}
              deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic)

instance Hs.NFData Resource

instance HsProtobuf.Named Resource where
        nameOf _ = (Hs.fromString "Resource")

instance HsProtobuf.HasDefault Resource

instance HsProtobuf.Message Resource where
        encodeMessage _
          Resource{resourceAttributes = resourceAttributes,
                   resourceDroppedAttributesCount = resourceDroppedAttributesCount}
          = ((Hs.mappend
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   (Hs.coerce
                      @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                      @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                      (resourceAttributes))))
               (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                  resourceDroppedAttributesCount))
        decodeMessage _
          = (Hs.pure Resource) <*>
              (HsProtobuf.coerceOver
                 @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                 @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                 (HsProtobuf.at HsProtobuf.decodeMessageField
                    (HsProtobuf.FieldNumber 1)))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
        dotProto _
          = [(HsProtobufAST.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobufAST.Repeated
                   (HsProtobufAST.Named
                      (HsProtobufAST.Dots
                         (HsProtobufAST.Path
                            ("opentelemetry" Hs.:| ["proto", "common", "v1", "KeyValue"])))))
                (HsProtobufAST.Single "attributes")
                []
                ""),
             (HsProtobufAST.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobufAST.Prim HsProtobufAST.UInt32)
                (HsProtobufAST.Single "dropped_attributes_count")
                []
                "")]

instance HsJSONPB.ToJSONPB Resource where
        toJSONPB (Resource f1 f2)
          = (HsJSONPB.object
               ["attributes" .=
                  (Hs.coerce
                     @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                     @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                     (f1)),
                "dropped_attributes_count" .= f2])
        toEncodingPB (Resource f1 f2)
          = (HsJSONPB.pairs
               ["attributes" .=
                  (Hs.coerce
                     @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                     @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                     (f1)),
                "dropped_attributes_count" .= f2])

instance HsJSONPB.FromJSONPB Resource where
        parseJSONPB
          = (HsJSONPB.withObject "Resource"
               (\ obj ->
                  (Hs.pure Resource) <*>
                    (HsProtobuf.coerceOver
                       @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                       @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                       (obj .: "attributes"))
                    <*> obj .: "dropped_attributes_count"))

instance HsJSONPB.ToJSON Resource where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON Resource where
        parseJSON = HsJSONPB.parseJSONPB

instance HsJSONPB.ToSchema Resource where
        declareNamedSchema _
          = do let declare_attributes = HsJSONPB.declareSchemaRef
               resourceAttributes <- declare_attributes Proxy.Proxy
               let declare_dropped_attributes_count = HsJSONPB.declareSchemaRef
               resourceDroppedAttributesCount <- declare_dropped_attributes_count
                                                   Proxy.Proxy
               let _ = Hs.pure Resource <*>
                         (HsProtobuf.coerceOver
                            @(HsProtobuf.NestedVec OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                            @(Hs.Vector OpenTelemetry.Proto.Common.V1.Common.KeyValue)
                            (HsJSONPB.asProxy declare_attributes))
                         <*> HsJSONPB.asProxy declare_dropped_attributes_count
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "Resource",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 Hs.Just HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("attributes", resourceAttributes),
                                                        ("dropped_attributes_count",
                                                         resourceDroppedAttributesCount)]}})

