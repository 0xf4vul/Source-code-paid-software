.class final Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/WarningDialogView$a;


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
    .line 141
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$3;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V
    .locals 1

    .prologue
    .line 144
    .line 1093
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->getHidingAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$3;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->f(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a$a;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/analysis/a$a;->a()V

    .line 149
    :cond_0
    return-void
.end method
