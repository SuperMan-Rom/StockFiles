.class Lcom/android/incallui/util/SecErrorDialogActivity$5;
.super Ljava/lang/Object;
.source "SecErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/util/SecErrorDialogActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$5;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$5;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    .line 131
    return-void
.end method