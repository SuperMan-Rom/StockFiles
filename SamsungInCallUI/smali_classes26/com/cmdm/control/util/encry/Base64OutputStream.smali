.class public Lcom/cmdm/control/util/encry/Base64OutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private dT:Ljava/io/OutputStream;

.field private dU:I

.field private dV:I

.field private dW:I

.field private dX:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 79
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/util/encry/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "wrapAt"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    .line 47
    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    .line 52
    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    .line 57
    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    .line 62
    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    .line 102
    iput-object p1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    .line 103
    iput p2, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    .line 104
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/cmdm/control/util/encry/Base64OutputStream;->commit()V

    .line 117
    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 118
    return-void
.end method

.method protected commit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 126
    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    if-lez v4, :cond_1

    .line 127
    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    iget v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    if-ne v4, v5, :cond_0

    .line 128
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 129
    iput v6, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    .line 131
    :cond_0
    sget-object v4, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v5, v5, 0x8

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, "b1":C
    sget-object v4, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v5, v5, 0xe

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 133
    .local v1, "b2":C
    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    sget-char v2, Lcom/cmdm/control/util/encry/Shared;->ee:C

    .line 134
    .local v2, "b3":C
    :goto_0
    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    sget-char v3, Lcom/cmdm/control/util/encry/Shared;->ee:C

    .line 135
    .local v3, "b4":C
    :goto_1
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 136
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 137
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 138
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 139
    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    .line 140
    iput v6, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    .line 141
    iput v6, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    .line 143
    .end local v0    # "b1":C
    .end local v1    # "b2":C
    .end local v2    # "b3":C
    .end local v3    # "b4":C
    :cond_1
    return-void

    .line 133
    .restart local v0    # "b1":C
    .restart local v1    # "b2":C
    :cond_2
    sget-object v4, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v5, v5, 0x14

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 134
    .restart local v2    # "b3":C
    :cond_3
    sget-object v4, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    and-int/lit16 v1, p1, 0xff

    iget v2, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    mul-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x10

    shl-int v0, v1, v2

    .line 108
    .local v0, "value":I
    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    .line 109
    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    .line 110
    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/cmdm/control/util/encry/Base64OutputStream;->commit()V

    .line 113
    :cond_0
    return-void
.end method
