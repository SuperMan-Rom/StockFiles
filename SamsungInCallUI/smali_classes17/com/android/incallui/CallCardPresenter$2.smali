.class Lcom/android/incallui/CallCardPresenter$2;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updateCallTime()V

    .line 215
    return-void
.end method
