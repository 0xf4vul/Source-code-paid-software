.class public final enum Lcom/piriform/ccleaner/alarm/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/alarm/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/alarm/g;",
        ">;",
        "Lcom/piriform/ccleaner/alarm/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/alarm/g;

.field public static final enum b:Lcom/piriform/ccleaner/alarm/g;

.field public static final enum c:Lcom/piriform/ccleaner/alarm/g;

.field private static final synthetic e:[Lcom/piriform/ccleaner/alarm/g;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/alarm/g;

    const-string/jumbo v1, "REMINDER_NOTIFICATION"

    const-string/jumbo v2, "reminder_notification"

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/alarm/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/alarm/g;->a:Lcom/piriform/ccleaner/alarm/g;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/alarm/g;

    const-string/jumbo v1, "SCHEDULED_CLEAN"

    const-string/jumbo v2, "scheduled_clean"

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/alarm/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/alarm/g;->b:Lcom/piriform/ccleaner/alarm/g;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/alarm/g;

    const-string/jumbo v1, "RESET_WIDGET"

    const-string/jumbo v2, "reset_widget"

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/alarm/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/alarm/g;->c:Lcom/piriform/ccleaner/alarm/g;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/alarm/g;

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->a:Lcom/piriform/ccleaner/alarm/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->b:Lcom/piriform/ccleaner/alarm/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->c:Lcom/piriform/ccleaner/alarm/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/alarm/g;->e:[Lcom/piriform/ccleaner/alarm/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/piriform/ccleaner/alarm/g;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static a(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/alarm/d;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/piriform/ccleaner/alarm/g;->values()[Lcom/piriform/ccleaner/alarm/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 32
    iget-object v4, v3, Lcom/piriform/ccleaner/alarm/g;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    return-object v3

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not an alarm recipient we handle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/alarm/g;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/piriform/ccleaner/alarm/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/alarm/g;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/alarm/g;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/piriform/ccleaner/alarm/g;->e:[Lcom/piriform/ccleaner/alarm/g;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/alarm/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/alarm/g;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/g;->d:Ljava/lang/String;

    return-object v0
.end method
