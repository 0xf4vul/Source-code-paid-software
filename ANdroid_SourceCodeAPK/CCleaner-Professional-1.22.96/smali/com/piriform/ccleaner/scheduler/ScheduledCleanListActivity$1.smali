.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/c;


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
    .line 45
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/l/c;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->m:Lcom/piriform/ccleaner/scheduler/l;

    .line 1136
    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/l;->e:Lcom/piriform/ccleaner/scheduler/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/m;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 49
    return-void
.end method
