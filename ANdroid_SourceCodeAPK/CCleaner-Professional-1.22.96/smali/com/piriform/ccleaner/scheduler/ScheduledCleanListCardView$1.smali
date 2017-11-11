.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/c;

.field final synthetic b:Lcom/piriform/ccleaner/l/c;

.field final synthetic c:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;Lcom/piriform/ccleaner/scheduler/c;Lcom/piriform/ccleaner/l/c;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;->c:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;

    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;->a:Lcom/piriform/ccleaner/scheduler/c;

    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;->b:Lcom/piriform/ccleaner/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;->a:Lcom/piriform/ccleaner/scheduler/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$1;->b:Lcom/piriform/ccleaner/l/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/scheduler/c;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 76
    return-void
.end method
