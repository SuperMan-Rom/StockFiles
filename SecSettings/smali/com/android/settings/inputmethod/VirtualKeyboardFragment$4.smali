.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViewsForKnox(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/preference/SecInputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Ljava/text/Collator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/preference/SecInputMethodPreference;Landroid/support/v7/preference/SecInputMethodPreference;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->compareTo(Landroid/support/v7/preference/SecInputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/support/v7/preference/SecInputMethodPreference;

    check-cast p2, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;->compare(Landroid/support/v7/preference/SecInputMethodPreference;Landroid/support/v7/preference/SecInputMethodPreference;)I

    move-result v0

    return v0
.end method
