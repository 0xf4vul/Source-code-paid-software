.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/k;
.super Lcom/piriform/ccleaner/storageanalyzer/frontend/n;
.source "SourceFile"


# instance fields
.field final n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

.field final o:Lcom/piriform/ccleaner/ui/view/c;

.field p:Lcom/piriform/ccleaner/g/d;

.field q:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field final r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final s:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;Lcom/piriform/ccleaner/ui/view/c;Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/n;-><init>(Landroid/view/View;)V

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 56
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->n:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    .line 57
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->o:Lcom/piriform/ccleaner/ui/view/c;

    .line 58
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/q/b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->q:Lcom/piriform/ccleaner/q/b;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/g/d;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->p:Lcom/piriform/ccleaner/g/d;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/storageanalyzer/frontend/k;)Lcom/piriform/ccleaner/storageanalyzer/frontend/o;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    return-object v0
.end method
