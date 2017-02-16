.class final Lsun/security/ssl/SignatureAlgorithmsExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


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


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, "signAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    .line 800
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v0

    iget-object v1, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 799
    iput v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    .line 794
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 8
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v5}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 807
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v5

    iput v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    .line 808
    iget v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    if-eqz v5, :cond_0

    iget v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    add-int/lit8 v5, v5, 0x2

    if-eq v5, p2, :cond_1

    .line 809
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " extension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 812
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    .line 813
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    .line 814
    .local v2, "remains":I
    const/4 v3, 0x0

    .line 815
    .local v3, "sequence":I
    :goto_0
    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 816
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    .line 817
    .local v1, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v4

    .line 820
    .local v4, "signature":I
    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    .line 821
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 822
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 825
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "hash":I
    .end local v4    # "signature":I
    :cond_2
    if-eqz v2, :cond_3

    .line 826
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Invalid server_name extension"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 804
    :cond_3
    return-void
.end method


# virtual methods
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
    .line 831
    iget-object v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    return-object v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 842
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 843
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 845
    iget-object v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 846
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 847
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    goto :goto_0

    .line 840
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 854
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 855
    .local v1, "opened":Z
    iget-object v4, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "signAlg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 856
    .local v2, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-eqz v1, :cond_0

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    const/4 v1, 0x1

    goto :goto_0

    .line 864
    .end local v2    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", signature_algorithms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
