.class final Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(ILcom/piriform/ccleaner/ui/view/WarningDialogView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/WarningDialogView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/view/WarningDialogView;->a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/WarningDialogView$1;->a:Lcom/piriform/ccleaner/ui/view/WarningDialogView;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/view/WarningDialogView$b;->a(Lcom/piriform/ccleaner/ui/view/WarningDialogView;)V

    .line 62
    :cond_0
    return-void
.end method
