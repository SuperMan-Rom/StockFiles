.class Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "IncomingCallSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
    .param p2, "x1"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    goto :goto_0
.end method
