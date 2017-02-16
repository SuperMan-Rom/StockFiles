.class final Lsun/security/ssl/RandomCookie;
.super Ljava/lang/Object;
.source "RandomCookie.java"


# instance fields
.field random_bytes:[B


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "generator"    # Ljava/security/SecureRandom;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 46
    .local v2, "temp":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 47
    long-to-int v0, v2

    .line 52
    .local v0, "gmt_unix_time":I
    :goto_0
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 53
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 55
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    shr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    .line 56
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    shr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 57
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    .line 58
    iget-object v1, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    int-to-byte v4, v0

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    .line 43
    return-void

    .line 49
    .end local v0    # "gmt_unix_time":I
    :cond_0
    const v0, 0x7fffffff

    .restart local v0    # "gmt_unix_time":I
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 3
    .param p1, "m"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v2, [B

    iput-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 63
    iget-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    .line 61
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 73
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v0, v2, 0x18

    .line 74
    .local v0, "gmt_unix_time":I
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 75
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 76
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "bytes = { "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 82
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 83
    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v2, " }"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 66
    return-void
.end method
