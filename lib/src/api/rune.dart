// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'rune.freezed.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`, `from`

@freezed
sealed class Artifact with _$Artifact {
  const Artifact._();

  const factory Artifact.cenotaph(
    Cenotaph field0,
  ) = Artifact_Cenotaph;
  const factory Artifact.runestone(
    Runestone field0,
  ) = Artifact_Runestone;

  RuneId? mint() {
    return when(
      cenotaph: (cenotaph) => cenotaph.mint,
      runestone: (runestone) => runestone.mint,
    );
  }
}

@freezed
@meta.immutable
class Cenotaph with _$Cenotaph {
  const factory Cenotaph({
    Rune? etching,
    Flaw? flaw,
    RuneId? mint,
  }) = _Cenotaph;
}

@freezed
@meta.immutable
class Edict with _$Edict {
  const Edict._();
  const factory Edict({
    required RuneId id,
    required BigInt amount,
    required int output,
  }) = _Edict;
  static Edict? fromIntegers(
          {required String rawTx,
          required RuneId id,
          required BigInt amount,
          required BigInt output}) =>
      OrdDart.instance.api.crateApiRuneEdictFromIntegers(
          rawTx: rawTx, id: id, amount: amount, output: output);
}

@freezed
@meta.immutable
class Etching with _$Etching {
  const Etching._();
  const factory Etching({
    int? divisibility,
    BigInt? premine,
    Rune? rune,
    int? spacers,
    String? symbol,
    Terms? terms,
    bool? turbo,
  }) = _Etching;
  static int maxDivisibility() =>
      OrdDart.instance.api.crateApiRuneEtchingMaxDivisibility();

  static int maxSpacers() =>
      OrdDart.instance.api.crateApiRuneEtchingMaxSpacers();

  BigInt? supply() => OrdDart.instance.api.crateApiRuneEtchingSupply(
        that: this,
      );
}

enum Flaw {
  edictOutput,
  edictRuneId,
  invalidScript,
  opcode,
  supplyOverflow,
  trailingIntegers,
  truncatedField,
  unrecognizedEvenTag,
  unrecognizedFlag,
  varint,
  ;
}

enum Network {
  /// Mainnet Bitcoin.
  bitcoin,

  /// Bitcoin's testnet network.
  testnet,

  /// Bitcoin's signet network.
  signet,

  /// Bitcoin's regtest network.
  regtest,
  ;
}

@freezed
@meta.immutable
class Rune with _$Rune {
  const Rune._();
  const factory Rune({
    required BigInt field0,
  }) = _Rune;
  Uint8List commitment() => OrdDart.instance.api.crateApiRuneRuneCommitment(
        that: this,
      );

  static int firstRuneHeight({required Network network}) =>
      OrdDart.instance.api.crateApiRuneRuneFirstRuneHeight(network: network);

  static Rune fromStr({required String s}) =>
      OrdDart.instance.api.crateApiRuneRuneFromStr(s: s);

  bool isReserved() => OrdDart.instance.api.crateApiRuneRuneIsReserved(
        that: this,
      );

  static Rune minimumAtHeight({required Network chain, required int height}) =>
      OrdDart.instance.api
          .crateApiRuneRuneMinimumAtHeight(chain: chain, height: height);

  BigInt n() => OrdDart.instance.api.crateApiRuneRuneN(
        that: this,
      );

  static Rune reserved({required BigInt block, required int tx}) =>
      OrdDart.instance.api.crateApiRuneRuneReserved(block: block, tx: tx);

  @override
  String toString() {
    return OrdDart.instance.api.crateApiRuneRuneToString(that: this);
  }
}

@freezed
@meta.immutable
class RuneId with _$RuneId {
  const RuneId._();
  const factory RuneId({
    required BigInt block,
    required int tx,
  }) = _RuneId;
  (BigInt, BigInt)? delta({required RuneId next}) =>
      OrdDart.instance.api.crateApiRuneRuneIdDelta(that: this, next: next);

  static RuneId fromStr({required String s}) =>
      OrdDart.instance.api.crateApiRuneRuneIdFromStr(s: s);

  RuneId? next({required BigInt block, required BigInt tx}) =>
      OrdDart.instance.api
          .crateApiRuneRuneIdNext(that: this, block: block, tx: tx);

  @override
  String toString() {
    return '$block:$tx';
  }
}

@freezed
@meta.immutable
class Runestone with _$Runestone {
  const Runestone._();
  const factory Runestone({
    List<Edict>? edicts,
    Etching? etching,
    RuneId? mint,
    int? pointer,
  }) = _Runestone;
  static int commitConfirmations() =>
      OrdDart.instance.api.crateApiRuneRunestoneCommitConfirmations();

  static Artifact? decipher({required String rawTx}) =>
      OrdDart.instance.api.crateApiRuneRunestoneDecipher(rawTx: rawTx);

  static Future<Artifact?> decipherAsync({required String rawTx}) =>
      OrdDart.instance.api.crateApiRuneRunestoneDecipherAsync(rawTx: rawTx);

  Uint8List encipher() => OrdDart.instance.api.crateApiRuneRunestoneEncipher(
        that: this,
      );

  Future<Uint8List> encipherAsync() =>
      OrdDart.instance.api.crateApiRuneRunestoneEncipherAsync(
        that: this,
      );

  static int magicNumber() =>
      OrdDart.instance.api.crateApiRuneRunestoneMagicNumber();
}

@freezed
@meta.immutable
class SpacedRune with _$SpacedRune {
  const SpacedRune._();
  const factory SpacedRune({
    required Rune rune,
    required int spacers,
  }) = _SpacedRune;
  static SpacedRune fromStr({required String s}) =>
      OrdDart.instance.api.crateApiRuneSpacedRuneFromStr(s: s);

  @override
  String toString() {
    return OrdDart.instance.api.crateApiRuneSpacedRuneToString(that: this);
  }
}

@freezed
@meta.immutable
class Terms with _$Terms {
  const factory Terms({
    BigInt? amount,
    BigInt? cap,
    (BigInt?, BigInt?)? height,
    (BigInt?, BigInt?)? offset,
  }) = _Terms;
}
