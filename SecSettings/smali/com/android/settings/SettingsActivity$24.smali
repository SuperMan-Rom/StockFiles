.class Lcom/android/settings/SettingsActivity$24;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initMainScreenSearchView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get0()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get5(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$24;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->-set1(Lcom/android/settings/SettingsActivity;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
