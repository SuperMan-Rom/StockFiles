.class public Lcom/cmdm/control/util/ToastCustomUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static df:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/Toast;I)V
    .locals 2
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "cnt"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ed3\u675f\u65f6\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/ToastCustomUtil;->aL(Ljava/lang/String;)V

    .line 115
    if-gtz p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-static {p0, p1}, Lcom/cmdm/control/util/ToastCustomUtil;->b(Landroid/widget/Toast;I)V

    goto :goto_0
.end method

.method private static aL(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method static synthetic aM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0}, Lcom/cmdm/control/util/ToastCustomUtil;->aL(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/widget/Toast;I)V
    .locals 4
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "cnt"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 123
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/cmdm/control/util/ToastCustomUtil$3;

    invoke-direct {v1, p0, p1}, Lcom/cmdm/control/util/ToastCustomUtil$3;-><init>(Landroid/widget/Toast;I)V

    .line 128
    const-wide/16 v2, 0x9c4

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 130
    return-void
.end method

.method static synthetic c(Landroid/widget/Toast;I)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/cmdm/control/util/ToastCustomUtil;->a(Landroid/widget/Toast;I)V

    return-void
.end method

.method public static showFor(Landroid/widget/Toast;I)V
    .locals 2
    .param p0, "aToast"    # Landroid/widget/Toast;
    .param p1, "durationInMilliseconds"    # I

    .prologue
    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 94
    new-instance v0, Lcom/cmdm/control/util/ToastCustomUtil$2;

    invoke-direct {v0}, Lcom/cmdm/control/util/ToastCustomUtil$2;-><init>()V

    .line 110
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public static showFor(Landroid/widget/Toast;J)V
    .locals 3
    .param p0, "aToast"    # Landroid/widget/Toast;
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 72
    new-instance v0, Lcom/cmdm/control/util/ToastCustomUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/cmdm/control/util/ToastCustomUtil$1;-><init>(JLandroid/widget/Toast;)V

    .line 88
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method public static showToast(Landroid/content/Context;IJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "dur"    # J

    .prologue
    const/4 v2, 0x1

    .line 39
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 40
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    .line 41
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 42
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    const/16 v2, 0x51

    const/4 v3, 0x0

    .line 43
    const/16 v4, 0x96

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    :goto_0
    const/4 v0, 0x2

    .line 49
    .local v0, "num":I
    const-string v1, "\u5f00\u59cb\u65f6\u95f4"

    invoke-static {v1}, Lcom/cmdm/control/util/ToastCustomUtil;->aL(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-static {v1, v0}, Lcom/cmdm/control/util/ToastCustomUtil;->a(Landroid/widget/Toast;I)V

    .line 52
    return-void

    .line 45
    .end local v0    # "num":I
    :cond_0
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dur"    # J

    .prologue
    const/4 v2, 0x1

    .line 24
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 25
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    .line 26
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 27
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    const/16 v2, 0x51

    const/4 v3, 0x0

    .line 28
    const/16 v4, 0x96

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 33
    :goto_0
    const/4 v0, 0x2

    .line 34
    .local v0, "num":I
    const-string v1, "\u5f00\u59cb\u65f6\u95f4"

    invoke-static {v1}, Lcom/cmdm/control/util/ToastCustomUtil;->aL(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-static {v1, v0}, Lcom/cmdm/control/util/ToastCustomUtil;->a(Landroid/widget/Toast;I)V

    .line 36
    return-void

    .line 30
    .end local v0    # "num":I
    :cond_0
    sget-object v1, Lcom/cmdm/control/util/ToastCustomUtil;->df:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
