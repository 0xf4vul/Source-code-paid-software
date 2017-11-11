.class public final Lcom/piriform/ccleaner/ui/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/activity/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/s/h;

.field final b:Lcom/piriform/ccleaner/cleaning/advanced/d;

.field final c:Lcom/piriform/ccleaner/b/a/a;

.field final d:Lcom/piriform/ccleaner/n/a;

.field final e:Lcom/piriform/ccleaner/cleaning/advanced/l;

.field final f:Lcom/piriform/ccleaner/b/c/a;

.field final g:Lcom/piriform/ccleaner/b/b/c;

.field h:Lcom/piriform/ccleaner/b/b/b;

.field i:Lcom/piriform/ccleaner/ui/activity/h$a;

.field j:Lf/j;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/cleaning/advanced/d;Lcom/piriform/ccleaner/b/a/a;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/cleaning/advanced/l;Lcom/piriform/ccleaner/b/c/a;Lcom/piriform/ccleaner/b/b/c;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/h;->a:Lcom/piriform/ccleaner/s/h;

    .line 48
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/activity/h;->b:Lcom/piriform/ccleaner/cleaning/advanced/d;

    .line 49
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/activity/h;->c:Lcom/piriform/ccleaner/b/a/a;

    .line 50
    iput-object p4, p0, Lcom/piriform/ccleaner/ui/activity/h;->d:Lcom/piriform/ccleaner/n/a;

    .line 51
    iput-object p5, p0, Lcom/piriform/ccleaner/ui/activity/h;->e:Lcom/piriform/ccleaner/cleaning/advanced/l;

    .line 52
    iput-object p6, p0, Lcom/piriform/ccleaner/ui/activity/h;->f:Lcom/piriform/ccleaner/b/c/a;

    .line 53
    iput-object p7, p0, Lcom/piriform/ccleaner/ui/activity/h;->g:Lcom/piriform/ccleaner/b/b/c;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->o()V

    .line 204
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/activity/h$a;->a(F)V

    .line 189
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/activity/h$a;->a(Lcom/piriform/ccleaner/a/a/d;)V

    .line 194
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/c;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/activity/h$a;->a(Lcom/piriform/ccleaner/c;)V

    .line 184
    return-void
.end method

.method final a(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->g()Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-virtual {v1, p1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v2

    .line 1076
    iget-wide v2, v2, Lcom/piriform/ccleaner/core/i;->b:J

    .line 161
    invoke-interface {v1, v2, v3}, Lcom/piriform/ccleaner/ui/activity/h$a;->a(J)V

    .line 162
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/a/a/d$b;)V

    .line 167
    :goto_1
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/a/a/d$c;)V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/a/a/d$b;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/activity/h$a;->a(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->f:Lcom/piriform/ccleaner/b/c/a;

    .line 1130
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->n:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 209
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->p()V

    .line 210
    return-void
.end method
