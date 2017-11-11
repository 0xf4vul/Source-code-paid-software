.class final Lcom/google/android/exoplayer2/c/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/c/d/j;

.field public final b:Lcom/google/android/exoplayer2/c/o;

.field public c:Lcom/google/android/exoplayer2/c/d/h;

.field public d:Lcom/google/android/exoplayer2/c/d/c;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/o;)V
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Lcom/google/android/exoplayer2/c/d/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/d/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 1159
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d/e$a;->b:Lcom/google/android/exoplayer2/c/o;

    .line 1160
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1170
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e$a;->a:Lcom/google/android/exoplayer2/c/d/j;

    .line 2115
    iput v4, v0, Lcom/google/android/exoplayer2/c/d/j;->e:I

    .line 2116
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/d/j;->s:J

    .line 2117
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    .line 2118
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c/d/j;->r:Z

    .line 2119
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/d/j;->o:Lcom/google/android/exoplayer2/c/d/i;

    .line 1171
    iput v4, p0, Lcom/google/android/exoplayer2/c/d/e$a;->e:I

    .line 1172
    iput v4, p0, Lcom/google/android/exoplayer2/c/d/e$a;->g:I

    .line 1173
    iput v4, p0, Lcom/google/android/exoplayer2/c/d/e$a;->f:I

    .line 1174
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/d/h;Lcom/google/android/exoplayer2/c/d/c;)V
    .locals 2

    .prologue
    .line 1163
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e$a;->c:Lcom/google/android/exoplayer2/c/d/h;

    .line 1164
    invoke-static {p2}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/e$a;->d:Lcom/google/android/exoplayer2/c/d/c;

    .line 1165
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/e$a;->b:Lcom/google/android/exoplayer2/c/o;

    iget-object v1, p1, Lcom/google/android/exoplayer2/c/d/h;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/d/e$a;->a()V

    .line 1167
    return-void
.end method
