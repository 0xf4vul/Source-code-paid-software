.class final Lcom/piriform/ccleaner/settings/analysis/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/analysis/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/settings/analysis/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/settings/analysis/a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-virtual {v1, p3}, Lcom/piriform/ccleaner/settings/analysis/a;->a(I)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v2, v1}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;)Lcom/piriform/ccleaner/settings/analysis/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/settings/analysis/a$b;->a()V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v2, v1}, Lcom/piriform/ccleaner/settings/analysis/a;->b(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    new-instance v2, Lcom/piriform/ccleaner/settings/analysis/a$a;

    iget-object v3, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-direct {v2, v3, v1, p2, v0}, Lcom/piriform/ccleaner/settings/analysis/a$a;-><init>(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;Landroid/view/View;B)V

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;)Lcom/piriform/ccleaner/settings/analysis/a$b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/settings/analysis/a$b;->a(Lcom/piriform/ccleaner/settings/analysis/a$a;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v2, v1}, Lcom/piriform/ccleaner/settings/analysis/a;->c(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a$1;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    invoke-static {v2, p2, v1, v0}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;Landroid/view/View;Lcom/piriform/ccleaner/a/a/d;Z)V

    goto :goto_0
.end method
