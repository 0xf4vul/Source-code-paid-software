.class public final Lcom/avast/android/burger/internal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field final b:I

.field final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "(((\\d+|\\*{1}){1}\\.)*(\\d+|\\*{1}){1})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/burger/internal/b/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILjava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/avast/android/burger/internal/b/b;->b:I

    .line 83
    iput-object p2, p0, Lcom/avast/android/burger/internal/b/b;->c:Ljava/util/regex/Pattern;

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/avast/android/burger/internal/b/b;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 151
    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 137
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 145
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v3, Lcom/avast/android/burger/internal/b/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4

    .line 147
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid rule was ignored, rule: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 148
    goto :goto_0

    .line 139
    :cond_3
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    move-object v0, v2

    .line 142
    goto :goto_0

    .line 150
    :cond_4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 151
    new-instance v1, Lcom/avast/android/burger/internal/b/b;

    invoke-direct {v1, v0, v2}, Lcom/avast/android/burger/internal/b/b;-><init>(ILjava/util/regex/Pattern;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string/jumbo v0, ""

    .line 118
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
