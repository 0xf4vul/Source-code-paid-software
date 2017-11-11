.class final Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$4;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V
    .locals 4

    .prologue
    .line 154
    .line 1093
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getHidingAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 155
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$4;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->f(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a$a;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 1184
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/analysis/a$a;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    iget-object v2, v0, Lcom/piriform/ccleaner/settings/analysis/a$a;->c:Landroid/view/View;

    iget-object v0, v0, Lcom/piriform/ccleaner/settings/analysis/a$a;->b:Lcom/piriform/ccleaner/a/a/d;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;Landroid/view/View;Lcom/piriform/ccleaner/a/a/d;Z)V

    .line 159
    :cond_0
    return-void
.end method
