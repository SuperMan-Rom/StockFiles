.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private done:Z

.field private ibuffer:[B

.field private input:Ljava/io/InputStream;

.field private obuffer:[B

.field private ofinish:I

.field private ostart:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 80
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 86
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 88
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 154
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 155
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 80
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 86
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 88
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 140
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 141
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 138
    return-void
.end method

.method private getMoreData()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 102
    iget-boolean v4, p0, Ljavax/crypto/CipherInputStream;->done:Z

    if-eqz v4, :cond_0

    return v6

    .line 103
    :cond_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 104
    .local v3, "readin":I
    if-ne v3, v6, :cond_2

    .line 105
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 107
    :try_start_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    if-nez v4, :cond_1

    .line 112
    return v6

    .line 110
    :catch_0
    move-exception v1

    .local v1, "e":Ljavax/crypto/BadPaddingException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    goto :goto_0

    .line 114
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :cond_1
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 115
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    array-length v4, v4

    iput v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 116
    iget v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    return v4

    .line 120
    :cond_2
    :try_start_1
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    :goto_1
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 123
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    if-nez v4, :cond_3

    .line 124
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 126
    :goto_2
    iget v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    return v4

    .line 121
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    array-length v4, v4

    iput v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    goto :goto_2
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 299
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    :goto_0
    iput v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 306
    iput v3, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 295
    return-void

    .line 301
    :catch_0
    move-exception v0

    .local v0, "ex":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 303
    .end local v0    # "ex":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 174
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v1, v2, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v0

    goto :goto_0

    .line 178
    :cond_0
    if-ne v0, v3, :cond_1

    return v3

    .line 180
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 221
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v2, v3, :cond_1

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "i":I
    :goto_0
    if-nez v1, :cond_0

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v1

    goto :goto_0

    .line 225
    :cond_0
    if-ne v1, v5, :cond_1

    return v5

    .line 227
    .end local v1    # "i":I
    :cond_1
    if-gtz p3, :cond_2

    .line 228
    return v4

    .line 230
    :cond_2
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int v0, v2, v3

    .line 231
    .local v0, "available":I
    if-ge p3, v0, :cond_3

    move v0, p3

    .line 232
    :cond_3
    if-eqz p1, :cond_4

    .line 233
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 235
    :cond_4
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/2addr v2, v0

    iput v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 236
    return v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 258
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int v0, v1, v2

    .line 259
    .local v0, "available":I
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 260
    int-to-long p1, v0

    .line 262
    :cond_0
    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 263
    return-wide v4

    .line 265
    :cond_1
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 266
    return-wide p1
.end method
