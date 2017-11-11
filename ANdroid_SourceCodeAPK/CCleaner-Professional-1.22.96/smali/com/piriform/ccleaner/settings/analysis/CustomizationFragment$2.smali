.class final Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    iput-object p2, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 109
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/b;

    move-result-object v0

    .line 1060
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/analysis/b;->d:Lcom/piriform/ccleaner/cleaning/g;

    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 111
    iget-object v6, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    new-instance v0, Lcom/piriform/ccleaner/settings/analysis/a;

    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    iget-object v4, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v4}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->c(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/c;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/settings/analysis/a;-><init>(Lcom/piriform/ccleaner/cleaning/g;Ljava/util/List;Lcom/piriform/ccleaner/settings/analysis/a$b;Lcom/piriform/ccleaner/settings/analysis/c;Landroid/view/LayoutInflater;)V

    invoke-static {v6, v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->a(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;Lcom/piriform/ccleaner/settings/analysis/a;)Lcom/piriform/ccleaner/settings/analysis/a;

    .line 112
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->d(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v0}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->e(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment$2;->b:Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;

    invoke-static {v1}, Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;->d(Lcom/piriform/ccleaner/settings/analysis/CustomizationFragment;)Lcom/piriform/ccleaner/settings/analysis/a;

    move-result-object v1

    .line 1144
    iget-object v1, v1, Lcom/piriform/ccleaner/settings/analysis/a;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 113
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-void
.end method
