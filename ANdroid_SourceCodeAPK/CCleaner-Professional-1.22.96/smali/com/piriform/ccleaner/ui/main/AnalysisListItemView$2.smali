.class final Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/core/a/b;

.field final synthetic b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/core/a/b;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;->b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;->a:Lcom/piriform/ccleaner/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;->b:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;->a:Lcom/piriform/ccleaner/core/a/b;

    invoke-static {v0, v1, p2}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/core/a/b;Z)V

    .line 189
    return-void
.end method
