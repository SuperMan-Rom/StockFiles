.class Lcom/android/incallui/service/SecVideoPopupService$2;
.super Ljava/lang/Object;
.source "SecVideoPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecVideoPopupService;->onLongTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecVideoPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/SecVideoPopupService;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/incallui/service/SecVideoPopupService$2;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 471
    return-void
.end method
