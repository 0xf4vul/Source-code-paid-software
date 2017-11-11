.class final Lcom/piriform/ccleaner/cleaning/a$1;
.super Lcom/piriform/ccleaner/a/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/cleaning/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/cleaning/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    invoke-direct {p0}, Lcom/piriform/ccleaner/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 4021
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/piriform/ccleaner/cleaning/a;->o:Z

    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 5021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->l:Lcom/piriform/ccleaner/cleaning/a$a;

    .line 129
    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/a$a;->c()V

    .line 130
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 1021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->i:Ljava/util/List;

    .line 118
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 2021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->m:Lcom/piriform/ccleaner/d/a/b;

    .line 123
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/a$1;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 3021
    iget-object v1, v1, Lcom/piriform/ccleaner/cleaning/a;->i:Ljava/util/List;

    .line 123
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/d/a/b;->a(Ljava/util/List;)V

    .line 124
    return-void
.end method
