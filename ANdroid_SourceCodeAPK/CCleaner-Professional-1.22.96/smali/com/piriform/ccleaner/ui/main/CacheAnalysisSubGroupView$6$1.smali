.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/d;)V
    .locals 2

    .prologue
    .line 316
    .line 1050
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 317
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    .line 318
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6$1;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->c:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->I:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 319
    return-void
.end method
