.class public final Lcom/b/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/g$a;


# instance fields
.field final a:J

.field public final b:Lcom/b/a/a/b;

.field final c:Lc/a/a/a/a;

.field final d:Lcom/b/a/a/g;

.field final e:Lcom/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/b;Lc/a/a/a/a;Lcom/b/a/a/g;Lcom/b/a/a/e;J)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 60
    iput-object p2, p0, Lcom/b/a/a/q;->c:Lc/a/a/a/a;

    .line 61
    iput-object p3, p0, Lcom/b/a/a/q;->d:Lcom/b/a/a/g;

    .line 62
    iput-object p4, p0, Lcom/b/a/a/q;->e:Lcom/b/a/a/e;

    .line 63
    iput-wide p5, p0, Lcom/b/a/a/q;->a:J

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 2136
    new-instance v1, Lcom/b/a/a/b$5;

    invoke-direct {v1, v0}, Lcom/b/a/a/b$5;-><init>(Lcom/b/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/b/a/a/s$b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Logged lifecycle event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/b/a/a/s$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 1038
    const-string/jumbo v1, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1040
    new-instance v2, Lcom/b/a/a/s$a;

    invoke-direct {v2, p2}, Lcom/b/a/a/s$a;-><init>(Lcom/b/a/a/s$b;)V

    .line 1109
    iput-object v1, v2, Lcom/b/a/a/s$a;->c:Ljava/util/Map;

    .line 2044
    invoke-virtual {v0, v2, v4, v4}, Lcom/b/a/a/b;->a(Lcom/b/a/a/s$a;ZZ)V

    .line 128
    return-void
.end method
