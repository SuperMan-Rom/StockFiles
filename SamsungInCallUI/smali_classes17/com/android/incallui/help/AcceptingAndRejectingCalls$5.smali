.class Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;
.super Ljava/lang/Object;
.source "AcceptingAndRejectingCalls.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/AcceptingAndRejectingCalls;->initIncomingTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10037c

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$800(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # invokes: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$900(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$5;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->show_toast:Z
    invoke-static {v0, v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$802(Lcom/android/incallui/help/AcceptingAndRejectingCalls;Z)Z

    .line 387
    const/4 v0, 0x0

    return v0
.end method
