.class public Lcom/cmdm/control/threadfactory/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final cN:I = 0x0

.field public static final cO:I = 0x13

.field public static final cP:I = 0xa

.field public static final cQ:I = -0x2

.field public static final cR:I = -0x4

.field public static final cS:I = -0x8

.field public static final cT:I = -0x10

.field public static final cU:I = -0x13

.field public static final cV:I = -0x1

.field public static final cW:I = 0x1


# instance fields
.field private cX:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/threadfactory/h;->cX:I

    .line 52
    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/cmdm/control/threadfactory/h;->cX:I

    .line 56
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cmdm/control/threadfactory/h;->cX:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 62
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 63
    return-void
.end method
