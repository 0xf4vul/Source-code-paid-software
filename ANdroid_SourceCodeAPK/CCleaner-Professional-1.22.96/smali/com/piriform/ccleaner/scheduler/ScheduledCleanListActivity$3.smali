.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 57
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$3;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity$3;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;->m:Lcom/piriform/ccleaner/scheduler/l;

    .line 1140
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->j:Lf/j;

    if-nez v1, :cond_0

    .line 1141
    new-instance v1, Lcom/piriform/ccleaner/l/b;

    sget-object v2, Lcom/piriform/ccleaner/l/c;->j:Lcom/piriform/ccleaner/l/c;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/l/b;-><init>(Lcom/piriform/ccleaner/l/c;)V

    .line 1142
    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/l;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/scheduler/l;->i:Lf/e;

    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/scheduler/l;->j:Lf/j;

    .line 61
    :cond_0
    return-void
.end method
