.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/d;

.field final synthetic b:Lcom/piriform/ccleaner/l/c;

.field final synthetic c:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;Lcom/piriform/ccleaner/scheduler/d;Lcom/piriform/ccleaner/l/c;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;->c:Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView;

    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;->a:Lcom/piriform/ccleaner/scheduler/d;

    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;->b:Lcom/piriform/ccleaner/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;->a:Lcom/piriform/ccleaner/scheduler/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListCardView$2;->b:Lcom/piriform/ccleaner/l/c;

    invoke-interface {v0, v1, p2}, Lcom/piriform/ccleaner/scheduler/d;->a(Lcom/piriform/ccleaner/l/c;Z)V

    .line 84
    return-void
.end method
