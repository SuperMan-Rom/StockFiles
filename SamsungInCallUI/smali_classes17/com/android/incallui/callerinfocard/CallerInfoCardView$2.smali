.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 279
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 283
    const-string v1, "onGlobalLayout..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v4

    # invokes: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$500(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    goto :goto_0
.end method
