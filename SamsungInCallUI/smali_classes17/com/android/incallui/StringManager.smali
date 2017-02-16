.class public Lcom/android/incallui/StringManager;
.super Ljava/lang/Object;
.source "StringManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StringManager"

.field private static mInstance:Lcom/android/incallui/StringManager;

.field private static mProductGroup:Ljava/lang/String;

.field private static mProductOperator:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/android/incallui/StringManager;->mProductGroup:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/StringManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/incallui/StringManager;->mInstance:Lcom/android/incallui/StringManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/incallui/StringManager;

    invoke-direct {v0}, Lcom/android/incallui/StringManager;-><init>()V

    sput-object v0, Lcom/android/incallui/StringManager;->mInstance:Lcom/android/incallui/StringManager;

    .line 106
    invoke-static {}, Lcom/android/incallui/StringManager;->initialize()V

    .line 108
    :cond_0
    sget-object v0, Lcom/android/incallui/StringManager;->mInstance:Lcom/android/incallui/StringManager;

    return-object v0
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 66
    const-string v0, "StringManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize salesCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "VZW"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CCT"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :cond_0
    const-string v0, "vzw"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    .line 86
    :cond_1
    :goto_0
    const-string v0, "VZW"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SPR"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "USC"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CSP"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TFN"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CRI"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LRA"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ACG"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CTC"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XAS"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BST"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CCT"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    const-string v0, "cdma"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductGroup:Ljava/lang/String;

    .line 100
    :cond_3
    const-string v0, "StringManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "salesCode =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mProductOperator =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mProductGroup =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/StringManager;->mProductGroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 69
    :cond_4
    const-string v0, "LGT"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "LUC"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "LUO"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    :cond_5
    const-string v0, "lgt"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 71
    :cond_6
    const-string v0, "SKT"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SKC"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SKO"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    :cond_7
    const-string v0, "skt"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    :cond_8
    const-string v0, "KDI"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    const-string v0, "kdi"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    :cond_9
    const-string v0, "DCM"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    const-string v0, "dcm"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :cond_a
    const-string v0, "SBM"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    const-string v0, "sbm"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 79
    :cond_b
    const-string v0, "TMB"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "TMK"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    :cond_c
    const-string v0, "tmo"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :cond_d
    const-string v0, "ATT"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "AIO"

    sget-object v1, Lcom/android/incallui/StringManager;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_e
    const-string v0, "att"

    sput-object v0, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    .line 117
    sget-object v1, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/StringManager;->mProductOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "stringId":I
    if-eqz v0, :cond_1

    .line 132
    .end local v0    # "stringId":I
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    sget-object v1, Lcom/android/incallui/StringManager;->mProductGroup:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/StringManager;->mProductGroup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    .restart local v0    # "stringId":I
    if-nez v0, :cond_0

    .line 132
    .end local v0    # "stringId":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
