.class final Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;
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
    .line 89
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/b;

    move-result-object v0

    .line 1060
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/analysis/b;->d:Lcom/piriform/ccleaner/cleaning/g;

    .line 94
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    iget-object v3, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v3}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->b(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/cleaning/g;J)Lcom/piriform/ccleaner/settings/analysis/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/settings/analysis/c;)Lcom/piriform/ccleaner/settings/analysis/c;

    .line 95
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->c(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/settings/analysis/c;->a()V

    .line 97
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    iget-object v1, v1, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->b:Lcom/piriform/ccleaner/a/e;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/a/e;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/a/d;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/d;->b()Ljava/util/List;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$1;->a:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Ljava/util/List;)V

    .line 101
    return-void
.end method
