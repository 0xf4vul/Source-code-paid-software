.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a(Lcom/piriform/ccleaner/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/a/a/i;

.field final synthetic b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;Lcom/piriform/ccleaner/a/a/i;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;->a:Lcom/piriform/ccleaner/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;->b:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)Lcom/piriform/ccleaner/ui/b/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;->a:Lcom/piriform/ccleaner/a/a/i;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/b/d$a;->a(Lcom/piriform/ccleaner/a/a/d;)V

    .line 88
    return-void
.end method
