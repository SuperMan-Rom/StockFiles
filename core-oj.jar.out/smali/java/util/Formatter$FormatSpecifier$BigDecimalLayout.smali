.class Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter$FormatSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecimalLayout"
.end annotation


# instance fields
.field private dot:Z

.field private exp:Ljava/lang/StringBuilder;

.field private mant:Ljava/lang/StringBuilder;

.field private scale:I

.field final synthetic this$1:Ljava/util/Formatter$FormatSpecifier;


# direct methods
.method public constructor <init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .locals 1
    .param p1, "this$1"    # Ljava/util/Formatter$FormatSpecifier;
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .prologue
    .line 3753
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3750
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3754
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3753
    return-void
.end method

.method private layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .locals 12
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .prologue
    .line 3794
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 3795
    .local v4, "coeff":[C
    iput p2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3802
    new-instance v8, Ljava/lang/StringBuilder;

    array-length v9, v4

    add-int/lit8 v9, v9, 0xe

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    .line 3804
    if-nez p2, :cond_4

    .line 3805
    array-length v6, v4

    .line 3806
    .local v6, "len":I
    const/4 v8, 0x1

    if-le v6, v8, :cond_3

    .line 3807
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-char v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3808
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_2

    .line 3809
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3810
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3811
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3812
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3813
    const/16 v8, 0xa

    if-ge v6, v8, :cond_1

    .line 3814
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3825
    :cond_0
    :goto_0
    return-void

    .line 3816
    :cond_1
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3818
    :cond_2
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3821
    :cond_3
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3822
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_0

    .line 3823
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+00"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3827
    .end local v6    # "len":I
    :cond_4
    int-to-long v8, p2

    neg-long v8, v8

    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    add-long v2, v8, v10

    .line 3828
    .local v2, "adjusted":J
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_9

    .line 3830
    array-length v8, v4

    sub-int v7, p2, v8

    .line 3831
    .local v7, "pad":I
    if-ltz v7, :cond_6

    .line 3833
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3834
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3835
    :goto_1
    if-lez v7, :cond_5

    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3836
    :cond_5
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3793
    .end local v7    # "pad":I
    :goto_2
    return-void

    .line 3838
    .restart local v7    # "pad":I
    :cond_6
    neg-int v8, v7

    array-length v9, v4

    if-ge v8, v9, :cond_7

    .line 3840
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v9, v7

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3841
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3842
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3843
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v9, v7

    invoke-virtual {v8, v4, v9, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3846
    :cond_7
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v9, v4

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3847
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    neg-int v8, p2

    if-ge v5, v8, :cond_8

    .line 3848
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3847
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3849
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    goto :goto_2

    .line 3854
    .end local v5    # "i":I
    .end local v7    # "pad":I
    :cond_9
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-char v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3855
    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_a

    .line 3856
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3857
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3858
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3860
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3861
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_d

    .line 3862
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3864
    .local v0, "abs":J
    iget-object v9, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x0

    cmp-long v8, v2, v10

    if-gez v8, :cond_c

    const/16 v8, 0x2d

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3865
    const-wide/16 v8, 0xa

    cmp-long v8, v0, v8

    if-gez v8, :cond_b

    .line 3866
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3867
    :cond_b
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3864
    :cond_c
    const/16 v8, 0x2b

    goto :goto_4

    .line 3869
    .end local v0    # "abs":J
    :cond_d
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private toCharArray(Ljava/lang/StringBuilder;)[C
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3786
    if-nez p1, :cond_0

    .line 3787
    return-object v1

    .line 3788
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 3789
    .local v0, "result":[C
    array-length v1, v0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3790
    return-object v0
.end method


# virtual methods
.method public exponent()[C
    .locals 1

    .prologue
    .line 3782
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public hasDot()Z
    .locals 1

    .prologue
    .line 3758
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    return v0
.end method

.method public layoutChars()[C
    .locals 2

    .prologue
    .line 3767
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3768
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 3769
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3770
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3772
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v1

    return-object v1
.end method

.method public mantissa()[C
    .locals 1

    .prologue
    .line 3776
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public scale()I
    .locals 1

    .prologue
    .line 3762
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    return v0
.end method
