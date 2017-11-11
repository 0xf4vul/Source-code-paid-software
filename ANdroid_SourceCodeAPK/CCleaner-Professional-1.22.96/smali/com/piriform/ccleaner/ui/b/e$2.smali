.class final Lcom/piriform/ccleaner/ui/b/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/b/e;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/piriform/ccleaner/ui/b/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b/e;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/e$2;->b:Lcom/piriform/ccleaner/ui/b/e;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/e$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/e$2;->b:Lcom/piriform/ccleaner/ui/b/e;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/e$2;->b:Lcom/piriform/ccleaner/ui/b/e;

    .line 1028
    iget-boolean v0, v0, Lcom/piriform/ccleaner/ui/b/e;->d:Z

    .line 99
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2028
    :goto_0
    iput-boolean v0, v1, Lcom/piriform/ccleaner/ui/b/e;->d:Z

    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/e$2;->b:Lcom/piriform/ccleaner/ui/b/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/e$2;->a:Landroid/view/View;

    .line 3028
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/b/e;->a(Landroid/view/View;)V

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
