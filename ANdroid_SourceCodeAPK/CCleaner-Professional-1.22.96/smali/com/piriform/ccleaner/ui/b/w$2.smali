.class final Lcom/piriform/ccleaner/ui/b/w$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/piriform/ccleaner/ui/b/w;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/w;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/w$2;->b:Lcom/piriform/ccleaner/ui/b/w;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/w$2;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/w$2;->b:Lcom/piriform/ccleaner/ui/b/w;

    .line 1059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 86
    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 1081
    iget-boolean v0, v0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 86
    if-nez v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/w$2;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/w$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
