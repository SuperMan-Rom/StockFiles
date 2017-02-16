.class final Lsun/security/ssl/CipherSuite$BulkCipher;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BulkCipher"
.end annotation


# static fields
.field private static final availableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/ssl/CipherSuite$BulkCipher;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final algorithm:Ljava/lang/String;

.field final allowed:Z

.field final description:Ljava/lang/String;

.field final expandedKeySize:I

.field final exportable:Z

.field final isCBCMode:Z

.field final ivSize:I

.field final keySize:I

.field final transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 395
    sput-object v0, Lsun/security/ssl/CipherSuite$BulkCipher;->availableCache:Ljava/util/Map;

    .line 392
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 4
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "expandedKeySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "allowed"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    .line 429
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "splits":[Ljava/lang/String;
    aget-object v2, v0, v1

    iput-object v2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    .line 432
    array-length v2, v0

    if-gt v2, v3, :cond_0

    .line 431
    :goto_0
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->isCBCMode:Z

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shl-int/lit8 v2, p2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->description:Ljava/lang/String;

    .line 434
    iput p2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->keySize:I

    .line 435
    iput p4, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    .line 436
    iput-boolean p5, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    .line 438
    iput p3, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    .line 439
    iput-boolean v3, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->exportable:Z

    .line 427
    return-void

    .line 432
    :cond_0
    const-string/jumbo v1, "CBC"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;IIZ)V
    .locals 4
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "ivSize"    # I
    .param p4, "allowed"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    .line 445
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "splits":[Ljava/lang/String;
    aget-object v1, v0, v2

    iput-object v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    .line 448
    array-length v1, v0

    if-gt v1, v3, :cond_0

    move v1, v2

    .line 447
    :goto_0
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->isCBCMode:Z

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shl-int/lit8 v3, p2, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->description:Ljava/lang/String;

    .line 450
    iput p2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->keySize:I

    .line 451
    iput p3, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    .line 452
    iput-boolean p4, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    .line 454
    iput p2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    .line 455
    iput-boolean v2, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->exportable:Z

    .line 443
    return-void

    .line 448
    :cond_0
    const-string/jumbo v1, "CBC"

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method static declared-synchronized clearAvailableCache()V
    .locals 2

    .prologue
    const-class v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    monitor-enter v1

    .line 495
    :try_start_0
    sget-object v0, Lsun/security/ssl/CipherSuite$BulkCipher;->availableCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 493
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isAvailable(Lsun/security/ssl/CipherSuite$BulkCipher;)Z
    .locals 9
    .param p0, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;

    .prologue
    const-class v8, Lsun/security/ssl/CipherSuite$BulkCipher;

    monitor-enter v8

    .line 500
    :try_start_0
    sget-object v0, Lsun/security/ssl/CipherSuite$BulkCipher;->availableCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .local v6, "b":Ljava/lang/Boolean;
    if-nez v6, :cond_0

    .line 503
    :try_start_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 504
    iget v0, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    .line 503
    invoke-direct {v2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 506
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget v0, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    new-array v0, v0, [B

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 507
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    .line 508
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 507
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    .line 509
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .end local v2    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    :try_start_2
    sget-object v0, Lsun/security/ssl/CipherSuite$BulkCipher;->availableCache:Ljava/util/Map;

    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    .line 510
    :catch_0
    move-exception v7

    .line 511
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v6    # "b":Ljava/lang/Boolean;
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    sget-object v0, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    if-ne p0, v0, :cond_1

    .line 485
    invoke-static {p0}, Lsun/security/ssl/CipherSuite$BulkCipher;->isAvailable(Lsun/security/ssl/CipherSuite$BulkCipher;)Z

    move-result v0

    return v0

    .line 489
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;
    .locals 6
    .param p1, "version"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "iv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 467
    invoke-static/range {v0 .. v5}, Lsun/security/ssl/CipherBox;->newCipherBox(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite$BulkCipher;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lsun/security/ssl/CipherSuite$BulkCipher;->description:Ljava/lang/String;

    return-object v0
.end method
