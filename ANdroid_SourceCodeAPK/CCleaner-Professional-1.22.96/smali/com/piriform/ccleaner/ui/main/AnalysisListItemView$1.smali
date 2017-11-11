.class final Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/a/a/d;

.field final synthetic b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/a/a/d;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;->b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;->a:Lcom/piriform/ccleaner/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;->b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;)Lcom/piriform/ccleaner/ui/b/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;->a:Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/b/d$a;->a(Lcom/piriform/ccleaner/a/a/d;)V

    .line 117
    return-void
.end method
