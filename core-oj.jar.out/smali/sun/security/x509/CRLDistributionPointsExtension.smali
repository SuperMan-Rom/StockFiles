.class public Lsun/security/x509/CRLDistributionPointsExtension;
.super Lsun/security/x509/Extension;
.source "CRLDistributionPointsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.CRLDistributionPoints"

.field public static final NAME:Ljava/lang/String; = "CRLDistributionPoints"

.field public static final POINTS:Ljava/lang/String; = "points"


# instance fields
.field private distributionPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private extensionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v1, "CRLDistributionPoints"

    invoke-direct {p0, v0, p1, p2, v1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(ZLjava/util/List;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 166
    iput-object p1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 167
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    .line 169
    instance-of v3, p3, [B

    if-nez v3, :cond_0

    .line 170
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Illegal argument type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    iput-object p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    .line 174
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 175
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 176
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid encoding for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    const-string/jumbo v5, " extension."

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    .line 180
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 182
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/DistributionPoint;

    invoke-direct {v0, v1}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/util/DerValue;)V

    .line 183
    .local v0, "point":Lsun/security/x509/DistributionPoint;
    iget-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "point":Lsun/security/x509/DistributionPoint;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_2
    iput-object p4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p4, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 140
    iput-object p1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 141
    iput-boolean p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    .line 142
    iput-object p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    .line 143
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    .line 144
    iput-object p4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 2
    .param p1, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 130
    const-string/jumbo v1, "CRLDistributionPoints"

    .line 129
    invoke-direct {p0, v0, p1, p2, v1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private encodeThis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v4, 0x0

    iput-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    .line 278
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 283
    .local v0, "pnts":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "point$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/DistributionPoint;

    .line 284
    .local v1, "point":Lsun/security/x509/DistributionPoint;
    invoke-virtual {v1, v0}, Lsun/security/x509/DistributionPoint;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_1

    .line 286
    .end local v1    # "point":Lsun/security/x509/DistributionPoint;
    :cond_1
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 287
    .local v3, "seq":Lsun/security/util/DerOutputStream;
    const/16 v4, 0x30

    invoke-virtual {v3, v4, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 288
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const-string/jumbo v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    .line 264
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    .line 256
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string/jumbo v2, "] not recognized by "

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string/jumbo v2, "CertAttrSet:"

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string/jumbo v2, "."

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 201
    return-void
.end method

.method protected encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 213
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 214
    iput-object p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 215
    iput-boolean p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    .line 216
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    .line 218
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 219
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 210
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const-string/jumbo v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "] not recognized by "

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string/jumbo v2, "CertAttrSet:"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string/jumbo v2, "."

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 273
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "points"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const-string/jumbo v0, "points"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type List."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    .line 237
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    .line 226
    return-void

    .line 233
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string/jumbo v2, "] not recognized by "

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string/jumbo v2, "CertAttrSet:"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string/jumbo v2, "."

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "]\n"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
