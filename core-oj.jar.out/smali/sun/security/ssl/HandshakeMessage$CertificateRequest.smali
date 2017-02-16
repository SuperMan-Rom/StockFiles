.class final Lsun/security/ssl/HandshakeMessage$CertificateRequest;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateRequest"
.end annotation


# static fields
.field private static final TYPES_ECC:[B

.field private static final TYPES_NO_ECC:[B

.field static final cct_dss_ephemeral_dh:I = 0x6

.field static final cct_dss_fixed_dh:I = 0x4

.field static final cct_dss_sign:I = 0x2

.field static final cct_ecdsa_fixed_ecdh:I = 0x42

.field static final cct_ecdsa_sign:I = 0x40

.field static final cct_rsa_ephemeral_dh:I = 0x5

.field static final cct_rsa_fixed_dh:I = 0x3

.field static final cct_rsa_fixed_ecdh:I = 0x41

.field static final cct_rsa_sign:I = 0x1


# instance fields
.field private algorithms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private algorithmsLen:I

.field authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field types:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1257
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_NO_ECC:[B

    .line 1259
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 1258
    sput-object v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_ECC:[B

    .line 1239
    return-void

    .line 1257
    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    .line 1259
    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x40t
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V
    .locals 11
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1308
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 1311
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1314
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    .line 1317
    iget v8, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v9, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v9, v9, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v8, v9, :cond_2

    .line 1318
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v8

    iput v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    .line 1319
    iget v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 1320
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    .line 1321
    const-string/jumbo v9, "Invalid supported_signature_algorithms field"

    .line 1320
    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1324
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    .line 1325
    iget v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    .line 1326
    .local v4, "remains":I
    const/4 v5, 0x0

    .line 1327
    .local v5, "sequence":I
    :goto_0
    const/4 v8, 0x1

    if-le v4, v8, :cond_1

    .line 1328
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    .line 1329
    .local v2, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v6

    .line 1333
    .local v6, "signature":I
    add-int/lit8 v5, v5, 0x1

    .line 1332
    invoke-static {v2, v6, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    .line 1334
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 1338
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v2    # "hash":I
    .end local v6    # "signature":I
    :cond_1
    if-eqz v4, :cond_3

    .line 1339
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    .line 1340
    const-string/jumbo v9, "Invalid supported_signature_algorithms field"

    .line 1339
    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1343
    .end local v4    # "remains":I
    .end local v5    # "sequence":I
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    .line 1344
    iput v10, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    .line 1348
    :cond_3
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v3

    .line 1349
    .local v3, "len":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v7, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/HandshakeMessage$DistinguishedName;>;"
    :goto_1
    const/4 v8, 0x3

    if-lt v3, v8, :cond_4

    .line 1351
    new-instance v1, Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    invoke-direct {v1, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    .line 1352
    .local v1, "dn":Lsun/security/ssl/HandshakeMessage$DistinguishedName;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    move-result v8

    sub-int/2addr v3, v8

    goto :goto_1

    .line 1356
    .end local v1    # "dn":Lsun/security/ssl/HandshakeMessage$DistinguishedName;
    :cond_4
    if-eqz v3, :cond_5

    .line 1357
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v9, "Bad CertificateRequest DN length"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1360
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    .line 1309
    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;Lsun/security/ssl/CipherSuite$KeyExchange;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 4
    .param p1, "ca"    # [Ljava/security/cert/X509Certificate;
    .param p2, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/ssl/CipherSuite$KeyExchange;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    .local p3, "signAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 1278
    iput-object p4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1281
    array-length v2, p1

    new-array v2, v2, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1283
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1284
    .local v1, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    new-instance v3, Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    invoke-direct {v3, v1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    aput-object v3, v2, v0

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    :cond_0
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_ECC:[B

    :goto_1
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    .line 1293
    iget v2, p4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_4

    .line 1294
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1295
    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 1296
    const-string/jumbo v3, "No supported signature algorithms"

    .line 1295
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_2
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_NO_ECC:[B

    goto :goto_1

    .line 1299
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    .line 1301
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v2

    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/2addr v2, v3

    .line 1300
    iput v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    .line 1276
    :goto_2
    return-void

    .line 1303
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    .line 1304
    const/4 v2, 0x0

    iput v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    goto :goto_2
.end method


# virtual methods
.method getAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v2, v2

    new-array v1, v2, [Ljavax/security/auth/x500/X500Principal;

    .line 1365
    .local v1, "ret":[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1366
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    return-object v1
.end method

.method getSignAlgorithms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1372
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    return-object v0
.end method

.method messageLength()I
    .locals 4

    .prologue
    .line 1382
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x2

    .line 1384
    .local v1, "len":I
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_0

    .line 1385
    iget v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1388
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1389
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    :cond_1
    return v1
.end method

.method messageType()I
    .locals 1

    .prologue
    .line 1377
    const/16 v0, 0xd

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    const-string/jumbo v5, "*** CertificateRequest"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1425
    sget-object v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_5

    const-string/jumbo v5, "verbose"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1426
    const-string/jumbo v5, "Cert Types: "

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 1428
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    aget-byte v5, v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 1448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Type-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1450
    :goto_1
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1451
    const-string/jumbo v5, ", "

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1430
    :sswitch_0
    const-string/jumbo v5, "RSA"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1432
    :sswitch_1
    const-string/jumbo v5, "DSS"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1434
    :sswitch_2
    const-string/jumbo v5, "Fixed DH (RSA sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1436
    :sswitch_3
    const-string/jumbo v5, "Fixed DH (DSS sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1438
    :sswitch_4
    const-string/jumbo v5, "Ephemeral DH (RSA sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1440
    :sswitch_5
    const-string/jumbo v5, "Ephemeral DH (DSS sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1442
    :sswitch_6
    const-string/jumbo v5, "ECDSA"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1444
    :sswitch_7
    const-string/jumbo v5, "Fixed ECDH (RSA sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1446
    :sswitch_8
    const-string/jumbo v5, "Fixed ECDH (ECDSA sig)"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1454
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1456
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_4

    .line 1457
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1458
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 1459
    .local v2, "opened":Z
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "signAlg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1460
    .local v3, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-eqz v2, :cond_2

    .line 1461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1463
    :cond_2
    invoke-virtual {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    const/4 v2, 0x1

    goto :goto_2

    .line 1467
    .end local v3    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Supported Signature Algorithms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1470
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "opened":Z
    .end local v4    # "signAlg$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v5, "Cert Authorities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1471
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v5, v5

    if-nez v5, :cond_6

    .line 1472
    const-string/jumbo v5, "<Empty>"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1422
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 1474
    .restart local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 1475
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->print(Ljava/io/PrintStream;)V

    .line 1474
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1428
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 6
    .param p1, "output"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 1401
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_0

    .line 1402
    iget v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 1403
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1404
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 1405
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    goto :goto_0

    .line 1410
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "algorithm$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .line 1411
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1412
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 1411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1415
    :cond_1
    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 1416
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1417
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 1416
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1396
    :cond_2
    return-void
.end method
