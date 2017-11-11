.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$2;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/l/c;Z)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$2;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->m:Lcom/piriform/ccleaner/scheduler/l;

    .line 1130
    new-instance v1, Lcom/piriform/ccleaner/l/b;

    invoke-direct {v1, p1}, Lcom/piriform/ccleaner/l/b;-><init>(Lcom/piriform/ccleaner/l/c;)V

    .line 1134
    iput-boolean p2, v1, Lcom/piriform/ccleaner/l/b;->e:Z

    .line 1132
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    .line 55
    return-void
.end method
