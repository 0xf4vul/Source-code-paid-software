.class public final Lcom/piriform/ccleaner/t/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/y$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/t/w;

.field final b:Lcom/piriform/ccleaner/t/v;

.field final c:Lcom/piriform/ccleaner/s/k;

.field final d:Lcom/piriform/ccleaner/f/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/w;Lcom/piriform/ccleaner/t/v;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/f/d;)V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/t/y;->a:Lcom/piriform/ccleaner/t/w;

    .line 29
    iput-object p2, p0, Lcom/piriform/ccleaner/t/y;->b:Lcom/piriform/ccleaner/t/v;

    .line 30
    iput-object p3, p0, Lcom/piriform/ccleaner/t/y;->c:Lcom/piriform/ccleaner/s/k;

    .line 31
    iput-object p4, p0, Lcom/piriform/ccleaner/t/y;->d:Lcom/piriform/ccleaner/f/d;

    .line 1036
    iget-object v0, p0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 2020
    new-instance v1, Lcom/piriform/ccleaner/t/u;

    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->b:Lcom/piriform/ccleaner/t/u$b;

    sget-object v3, Lcom/piriform/ccleaner/t/u$a;->a:Lcom/piriform/ccleaner/t/u$a;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/t/u;-><init>(Lcom/piriform/ccleaner/t/u$b;Lcom/piriform/ccleaner/t/u$a;)V

    .line 2021
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->g:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 2022
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    .line 2174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 3136
    iput-object v2, v1, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 2025
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->f:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 2026
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    .line 3174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 2027
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x;)V

    .line 2029
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->e:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 2030
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->a:Lcom/piriform/ccleaner/t/x$a;

    .line 4174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 2031
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x;)V

    .line 1036
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v0, p0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/t/y;->c:Lcom/piriform/ccleaner/s/k;

    iget-object v2, p0, Lcom/piriform/ccleaner/t/y;->d:Lcom/piriform/ccleaner/f/d;

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/t/w;->a(Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/f/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1038
    iget-object v0, p0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 5101
    new-instance v1, Lcom/piriform/ccleaner/t/u;

    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->d:Lcom/piriform/ccleaner/t/u$b;

    sget-object v3, Lcom/piriform/ccleaner/t/u$a;->c:Lcom/piriform/ccleaner/t/u$a;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/t/u;-><init>(Lcom/piriform/ccleaner/t/u$b;Lcom/piriform/ccleaner/t/u$a;)V

    .line 5103
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->i:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 5104
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 5174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 5105
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x;)V

    .line 5107
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->j:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 5108
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 6174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 7158
    iput v4, v2, Lcom/piriform/ccleaner/t/x;->a:F

    .line 8136
    iput-object v2, v1, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 5112
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->h:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 5113
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 8174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 5114
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x;)V

    .line 5116
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->k:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 5117
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 9174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 5118
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x;)V

    .line 1038
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 10124
    new-instance v1, Lcom/piriform/ccleaner/t/u;

    sget-object v2, Lcom/piriform/ccleaner/t/u$b;->a:Lcom/piriform/ccleaner/t/u$b;

    sget-object v3, Lcom/piriform/ccleaner/t/u$a;->a:Lcom/piriform/ccleaner/t/u$a;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/t/u;-><init>(Lcom/piriform/ccleaner/t/u$b;Lcom/piriform/ccleaner/t/u$a;)V

    .line 10125
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->c:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 10126
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 10174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 10127
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x;)V

    .line 10129
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->b:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 10130
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 11174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 10131
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x;)V

    .line 10133
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->d:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 10134
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 12174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 10135
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x;)V

    .line 10137
    new-instance v2, Lcom/piriform/ccleaner/t/x;

    sget-object v3, Lcom/piriform/ccleaner/t/x$b;->a:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v2, v3}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 10138
    sget-object v3, Lcom/piriform/ccleaner/t/x$a;->b:Lcom/piriform/ccleaner/t/x$a;

    .line 13174
    iput-object v3, v2, Lcom/piriform/ccleaner/t/x;->c:Lcom/piriform/ccleaner/t/x$a;

    .line 14158
    iput v4, v2, Lcom/piriform/ccleaner/t/x;->a:F

    .line 15136
    iput-object v2, v1, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 1039
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
