.class Lcom/android/incallui/help/RejectCallsWithMessage$6;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectCallsWithMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectCallsWithMessage;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/help/RejectCallsWithMessage;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$6;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$6;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # invokes: Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$000(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    .line 254
    const/4 v0, 0x0

    return v0
.end method
