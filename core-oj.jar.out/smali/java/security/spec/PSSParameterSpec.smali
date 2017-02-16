.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljava/security/spec/PSSParameterSpec;


# instance fields
.field private mdName:Ljava/lang/String;

.field private mgfName:Ljava/lang/String;

.field private mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private saltLen:I

.field private trailerField:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    invoke-direct {v0}, Ljava/security/spec/PSSParameterSpec;-><init>()V

    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "SHA-1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "MGF1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 96
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "saltLen"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "SHA-1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "MGF1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 155
    if-gez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative saltLen value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput p1, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .locals 3
    .param p1, "mdName"    # Ljava/lang/String;
    .param p2, "mgfName"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "saltLen"    # I
    .param p5, "trailerField"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "SHA-1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "MGF1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "digest algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mask generation function algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    if-gez p4, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative saltLen value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    if-gez p5, :cond_3

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative trailerField: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 140
    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 141
    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 121
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    return v0
.end method

.method public getTrailerField()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return v0
.end method
