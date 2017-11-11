.class final Lcom/piriform/ccleaner/ui/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final a:Lcom/piriform/ccleaner/core/b;

.field private final b:Lcom/piriform/ccleaner/n/a$a;

.field private final c:Lcom/piriform/ccleaner/n/a;

.field private d:I


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/core/b;Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/n/a;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    .line 1019
    iget v0, v0, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/b/a;->d:I

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/a;->a:Lcom/piriform/ccleaner/core/b;

    .line 22
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/a;->b:Lcom/piriform/ccleaner/n/a$a;

    .line 23
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/b/a;->c:Lcom/piriform/ccleaner/n/a;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/core/a;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/a;->c:Lcom/piriform/ccleaner/n/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/a;->b:Lcom/piriform/ccleaner/n/a$a;

    .line 1068
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    invoke-static {v1}, Lcom/piriform/ccleaner/n/a$a;->a(Lcom/piriform/ccleaner/n/a$a;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/piriform/ccleaner/core/a;->a:Lcom/piriform/ccleaner/core/a;

    .line 2019
    iget v2, v2, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;I)I

    move-result v0

    .line 1069
    invoke-static {v0}, Lcom/piriform/ccleaner/core/a;->a(I)Lcom/piriform/ccleaner/core/a;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 28
    iget v0, p0, Lcom/piriform/ccleaner/ui/b/a;->d:I

    if-eq p3, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/a;->c:Lcom/piriform/ccleaner/n/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/a;->b:Lcom/piriform/ccleaner/n/a$a;

    invoke-static {p3}, Lcom/piriform/ccleaner/core/a;->a(I)Lcom/piriform/ccleaner/core/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/core/a;)V

    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/a;->a:Lcom/piriform/ccleaner/core/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/b;->a()V

    .line 31
    iput p3, p0, Lcom/piriform/ccleaner/ui/b/a;->d:I

    .line 33
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/a;->c:Lcom/piriform/ccleaner/n/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/a;->b:Lcom/piriform/ccleaner/n/a$a;

    sget-object v2, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/core/a;)V

    .line 38
    return-void
.end method
