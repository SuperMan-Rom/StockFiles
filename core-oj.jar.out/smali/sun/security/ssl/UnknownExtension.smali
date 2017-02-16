.class final Lsun/security/ssl/UnknownExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# instance fields
.field private final data:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;ILsun/security/ssl/ExtensionType;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .param p3, "type"    # Lsun/security/ssl/ExtensionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 254
    new-array v0, p2, [B

    iput-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    .line 256
    if-eqz p2, :cond_0

    .line 257
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method length()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 267
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unsupported extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    invoke-static {v1}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
