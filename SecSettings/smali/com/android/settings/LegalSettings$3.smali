.class Lcom/android/settings/LegalSettings$3;
.super Ljava/lang/Object;
.source "LegalSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LegalSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LegalSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LegalSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LegalSettings$3;->this$0:Lcom/android/settings/LegalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LegalSettings$3;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v0}, Lcom/android/settings/LegalSettings;->-wrap1(Lcom/android/settings/LegalSettings;)V

    const/4 v0, 0x0

    return v0
.end method
